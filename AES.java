package tema3sc;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.io.FileUtils;

public class AES {

		private static SecretKeySpec secretKey;
		private static byte[] key;
		
		public static void setKey(String myKey)
		{
			MessageDigest sha = null;
			try
			{
				key = myKey.getBytes("UTF-8");
				sha = MessageDigest.getInstance("SHA-1");
				key = sha.digest(key);
				key = Arrays.copyOf(key, 16);
				secretKey = new SecretKeySpec(key,"AES");
			}
			catch(NoSuchAlgorithmException e)
			{
				e.printStackTrace();
			}
			catch(UnsupportedEncodingException e)
			{
				e.printStackTrace();
			}
		}
		
		public static String encrypt(String strToEncrypt,String secret)
		{
			try
			{
				setKey(secret);
				Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
				cipher.init(Cipher.ENCRYPT_MODE, secretKey);
				return Base64.getEncoder().encodeToString(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));
			}
			catch(Exception e)
			{
				System.out.println("Error while encrypting: "+e.toString());
			}
			return null;
		}
		
		public static String decrypt(String strToDecrypt,String secret)
		{
			try
			{
				setKey(secret);
				Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
				cipher.init(Cipher.DECRYPT_MODE, secretKey);
				return new String(cipher.doFinal(Base64.getDecoder().decode(strToDecrypt)));
			}
			catch(Exception e)
			{
				System.out.println("Error while decrypting: "+e.toString());
				
			}
			return null;
		}
		public static void main(String[] args) throws IOException {
			if (args.length!=5)
			{
				System.out.println("Insufficent arguments!!You must provide by the following example:"
						+ " 1.-e/-d 2.path/to/input file 3.path/to/output file 4.path/to/output file 5.path/to/output file");
				return ;
			}	
			  String str1  =args[1]; //input file
			  String str2 = args[2]; //output1
			  String str3 = args[3]; //output2
			  String str4 = args[4]; //output3
			if (args[0].equals("-e")) {
				System.out.println("Encrypting!...\n");
			
				File file = new File(str1);
				String message = FileUtils.readFileToString(file, "utf-8");


				long startTime = System.nanoTime();
				String cipherText =AES.encrypt(message, "s3cr3t");


					long endTime = System.nanoTime();
					long duration = (endTime - startTime)/1000000;
					try
					{
						FileWriter myWriter1 = new FileWriter(str2);
						FileWriter myWriter2 = new FileWriter(str3);
						FileWriter myWriter3 = new FileWriter(str4);
						myWriter1.write(cipherText);
						myWriter2.write("This is the execution time for file to be encrypted "+ duration);
						double len = (double)str1.length()/1024;
						myWriter3.write("This the execution speed " + len/ (1.0 * duration));
						myWriter1.close();
						myWriter2.close();
						myWriter3.close();
					}
					catch(IOException e)
					{
					      System.out.println("An error occurred.");
					      e.printStackTrace();
					}
				System.out.println("Done!\n");
//				System.out.println();
				
			}
			else
				if (args[0].equals("-d"))
			{
					System.out.println("Decrypting!...\n");
					
					File file = new File(str1);
					String message = FileUtils.readFileToString(file, "utf-8");


					long startTime = System.nanoTime();
					String plainText =AES.decrypt(message, "s3cr3t");
					long endTime = System.nanoTime();
					long duration = (endTime - startTime)/1000000;
					try
					{
						FileWriter myWriter1 = new FileWriter(str2);
						FileWriter myWriter2 = new FileWriter(str3);
						FileWriter myWriter3 = new FileWriter(str4);
						myWriter1.write(plainText);
						myWriter2.write("This is the execution time for file to be decrypted "+ duration);
						double len = (double)str1.length()/1024;
						myWriter3.write("This the execution speed " + len/ (1.0 * duration));
						myWriter1.close();
						myWriter2.close();
						myWriter3.close();
					}
					catch(IOException e)
					{
					      System.out.println("An error occurred.");
					      e.printStackTrace();
					}
				System.out.println("Done!\n");
					
			}
				else
				{
					System.out.println("Wrong arguments!!!");
				}

		}
}
