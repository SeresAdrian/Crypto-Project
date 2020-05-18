#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>
#include <iomanip>
#include <algorithm>
#include <bits/stdc++.h>
using namespace std;

vector<uint8_t> TextToBytes(string inputText)
{
    vector<uint8_t> bytes;
    for (int i = 0; i < inputText.length(); ++i)
        bytes.push_back((uint8_t)inputText[i]);

    return bytes;
}

void BytesToText(vector<uint8_t> inputBytes, ofstream& outputFile)
{
    string text;
    for (int i = 0; i < inputBytes.size(); ++i)
    {
        text += (char)inputBytes[i];
    }

    outputFile << text;
    outputFile.close();
}

vector<uint8_t> HexToBytes(string inputText)
{
    vector<uint8_t> bytes;
    for (int i = 0; i < inputText.size(); i += 2)
    {
        unsigned int localHexValue;
        stringstream hexConverter;
        hexConverter << std::hex;
        string subs = inputText.substr(i, 2);
        hexConverter << subs;
        hexConverter >> localHexValue;
        bytes.push_back(localHexValue);
    }
    return bytes;
}

void BytesToHex(vector<uint8_t> inputBytes, ofstream& outputFile)
{
    stringstream hexConverter;
    hexConverter << std::hex;
    for (int i = 0; i < inputBytes.size(); ++i)
    {
        hexConverter << setw(2) << std::setfill('0') << (int)inputBytes[i];
    }
    
    string converted = hexConverter.str();
    std::transform(converted.begin(), converted.end(), converted.begin(), ::toupper);
    outputFile << converted;
    outputFile.close();
}

pair<vector<uint8_t>, vector<uint8_t>> ActualEncryption(vector<uint8_t> textBytes, vector<uint8_t> keyBytes)
{
    vector<uint8_t> keyVector;
    vector<uint8_t> cypherVector;

    uint64_t textSize = textBytes.size();
    uint64_t keySize = keyBytes.size();

    vector<uint8_t> bytes{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32,
                 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64,
                 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96,
                 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122,
                 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148,
                 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174,
                 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200,
                 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226,
                 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255 };

    int j = 0;
    uint8_t aux, k;
    for (int i = 0; i < 256; ++i)
    {
        j = (j + bytes[i] + keyBytes[i % keySize]) % 256;
        aux = bytes[i];
        bytes[i] = bytes[j];
        bytes[j] = aux;
    }

    int i = 0;
    j = 0;
    for (int m = 0; m < textSize; ++m)
    {
        i = (i + 1) % 256;
        j = (j + bytes[i]) % 256;
        aux = bytes[i];
        bytes[i] = bytes[j];
        bytes[j] = aux;
        k = bytes[(bytes[i] + bytes[j]) % 256];
        keyVector.push_back(k);
        cypherVector.push_back(k ^ textBytes[m]);
    }
    
    return make_pair(keyVector, cypherVector);
}

void Crypt(string input, string key, ofstream& outputText, ofstream& outputKeyStream)
{
    vector<uint8_t> textBytes = TextToBytes(input);
    vector<uint8_t> keyBytes = TextToBytes(key);
    pair<vector<uint8_t>, vector<uint8_t>> encryptionPair = ActualEncryption(textBytes, keyBytes);
    keyBytes = encryptionPair.first;
    textBytes = encryptionPair.second;
    BytesToHex(keyBytes, outputKeyStream);
    BytesToHex(textBytes, outputText);
}

void Decrypt(string input, string key, ofstream& outputText, ofstream& outputKeyStream)
{
    vector<uint8_t> textBytes = HexToBytes(input);
    vector<uint8_t> keyBytes = TextToBytes(key);
    pair<vector<uint8_t>, vector<uint8_t>> encryptionPair = ActualEncryption(textBytes, keyBytes);
    keyBytes = encryptionPair.first;
    textBytes = encryptionPair.second;
    BytesToHex(keyBytes, outputKeyStream);
    BytesToText(textBytes, outputText);
}

int main(int argc, char** argv)
{
    if (argc < 6)
    {
        std::cout << "Insufficient arguments! arg[1] for mode (-e or -d), arg[2] for RC4 key file path, arg[3] for input file path, arg[4] for output file path, arg[5] for output keystream file path)" << std::endl;
        return 1;
    }

    string key = argv[2];
    string input = argv[3];
    string outputPath = argv[4];
    string outputKeyStreamPath = argv[5];
    ifstream keyFile(key);
    ifstream inputFile(input);
    ofstream outputText(outputPath);
    ofstream outputKeyStream(outputKeyStreamPath);

    string inputString((std::istreambuf_iterator<char>(inputFile)),
        istreambuf_iterator<char>());

    string inputKey((std::istreambuf_iterator<char>(keyFile)),
        istreambuf_iterator<char>());

    if (strcmp(argv[1], "-e") == 0)
    {
        cout << "Encrypting...\n";
        Crypt(inputString, inputKey, outputText, outputKeyStream);
        cout << "Encryption done!";
    }
    else
    {
        cout << "Decrypting...\n";
        Decrypt(inputString, inputKey, outputText, outputKeyStream);
        cout << "Decryption done!";
    }

    inputFile.close();

    return 0;
}
