usage :
download or clone it
chmod +x crypto.sh
./crypto.sh



Caesar Cipher (Cifrul Cezar):
It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.
###
Este un tip de cifru al substituției, în care fiecare literă din textul inițial este înlocuită cu o literă care se află în alfabet la o distanță 
fixă față de cea înlocuită.

Vigenere Cipher (Ciful Vigenere):
It is a method of encrypting alphabetic text by using a series of interwoven Caesar ciphers, based on the letters of a keyword.
###
Este o metodă de criptare care folosește o serie de cifruri Cezar diferite bazate pe literele unui cuvânt-cheie


Baconian Cipher(Cifrul Bacon):
To encode a message, each letter of the plaintext is replaced by a group of five of the letters 'A' or 'B'. This replacement is a 5-bit binary encoding
We start at the point of the representation of A=0 Z=25 so we have to change the decimal conversion into binary A = 00000 = aaaaa B = 00001 = aaaab 
where a = 0 and b = 1
###
Pentru encodarea unui mesaj, fiecare litera din textul citibil este inlocuita de un grup de cinci litere 'A' sau 'B'. Aceasta inlocuire este cate un
grup de 5 encodari binare . Pornim de la premisa A=0 B=25 de unde schimbam baza de numeratie din decimal in binar A = 00000 = aaaaa B = 00001 = aaaab
unde a = 0 si b = 0  


Xor Cipher:
This type of encryption use a private key to encrypt and to decrypt, it has to make the xor operation(^) between binary representation of each letter.
###
Acest tip de encriptare foloseste o cheie privata pentru a encripta si pentru a decripta, utilizeaza operatia xor(^) intre reprezentarea binara
a doua litere.

Affine Cipher:
The affine is a type of monoalphabetic substitution cipher, where each letter in an alphabet is mapped to its numeric equivalent, encrypted using 
a simple mathematical function, and converted back to a letter. Each letter is enciphered with the function (ax + b) mod 26, where b is the magnitude
of the shift. In our case a=17 b =20(fixed numbers) and x represents the ascii code of each letter.
###
Aceasta metoda este un cifru de substitutie monoalfabetic, unde fiecare litera din alfabet este mapata de o formula matematica simpla (ax+b) mod 26 
unde b este dimensiunea siftari. In acest caz a=17 b=20(numere fixe) si x reprezinta codul ascii al fiecarei litere din alfabet.

Atbash Cipher:
Atbash is a monoalphabetic substitution cipher originally used to encrypt the Hebrew alphabet. It can be modified for use with any known writing 
system with a standard collating order. 
###
Atbash este un cifru de substitutie monoalfabetic, este cunoscut pentru  modificarea literelor din alfabetul normal in ordinea dorita.

Substitution Cipher:
a substitution cipher is a method of encrypting by which units of plaintext are replaced with ciphertext, according to a fixed system; the "units"
may be single letters (the most common), pairs of letters, triplets of letters, mixtures of the above, and so forth. The receiver deciphers the 
text by performing the inverse substitution. 
###
aceasta este o metoda de encriptare unde fiecare unitate din textul citibil este inlocuita cu textul cifrat, care se bazeaza pe un sistem fixat. 
unitatile pot fi una doua sau mai multe grupuri de litere amestecate. Receptorul trebuie sa descifreze textul prin aplicarea substituiei inverse.
