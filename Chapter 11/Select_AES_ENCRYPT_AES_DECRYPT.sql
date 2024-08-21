SELECT address,
AES_ENCRYPT(address, 'salt123'),
CAST(AES_DECRYPT(AES_ENCRYPT(address, 'salt123'), 'salt123') AS CHAR)
FROM address;