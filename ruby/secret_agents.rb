def encrypt(str)
  index = 0
    while index < str.length
      print str[index].next
      index += 1
    end
end


def decrypt(str)
  index=0
    while index < str.length
      print (str[index].ord-1).chr
      index += 1  
    end
end
  
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
puts encrypt("swordfish")
puts decrypt("txpsegjti")
 

 

