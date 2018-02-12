class Dictionary
  def substrings(str, dic)
    result=Hash.new()

    dic.each{|word|
      count=str
                .downcase
                .scan(word)
                .count
      result[word]= count if count>0
    }
    result
  end


end

dic = %w(below down go going horn how howdy it i low own part partner sit)
puts Dictionary.new.substrings("Howdy partner, sit down! How's it going?",dic)