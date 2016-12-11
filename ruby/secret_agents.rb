#An Encryptor
#INPUT: a word or phrase - String
def encrypt(str)
#OUTPUT: each letter in the input 
 index = 0
   while index < str.length
#switched to the letter following it, alphabetically - String
   print str[index].next
   index += 1
   end
end
  #Example Input: "hello"
  #Example Output: "ifmmp"



#A Decryptor
#INPUT: a word or phrase - String
def decrypt(str)
 
 index=0
#OUTPUT: each letter in the input  
 while index < str.length
#switched to the letter preceding it, alphabetically - String
   output = (str[index].ord-1).chr
   print output.tr("`", "z")
   index += 1  
 end
#Example Input: "hello"
#Example Output: "gdkkm"
 
end
 
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
puts encrypt("swordfish")
puts decrypt("txpsegjti")
puts decrypt(encrypt("swordfish"))
