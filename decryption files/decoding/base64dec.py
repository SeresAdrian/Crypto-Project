import base64

base64_message = input("Enter the encoded text : ")
base64_bytes = base64_message.encode('ascii')
message_bytes = base64.b64decode(base64_bytes)
message = message_bytes.decode('ascii')

print("The decoded text is : " + message)
