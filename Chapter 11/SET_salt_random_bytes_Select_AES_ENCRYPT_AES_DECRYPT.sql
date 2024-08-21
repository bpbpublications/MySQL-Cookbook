SET @salt = random_bytes(8); -- produces 64-bit salt, use 16 as input for 128-bit 
SELECT address,
AES_ENCRYPT(address, @salt),
CAST(AES_DECRYPT(AES_ENCRYPT(address, @salt), @salt) AS CHAR)
FROM address;