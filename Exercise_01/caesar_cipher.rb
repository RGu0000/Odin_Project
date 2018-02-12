class Caesar_cipher
  def caesar_cipher(string, num)
    string=string.split("")
            .collect {|x|
              letter=x.ord
              if letter.between?(65,90)
                letter=65+(letter-65+num)%26
              elsif letter.between?(97,122)
                letter=97+(letter-97+num)%26
              end
              letter.chr
            }.join("")
  end
end

test=Caesar_cipher.new.caesar_cipher("What a string!", 5)
puts Caesar_cipher.new.caesar_cipher(test, -5)


