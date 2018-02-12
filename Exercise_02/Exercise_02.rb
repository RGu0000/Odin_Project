class Stock
  def stock_picker(array)

    result= array.combination(2)
              .to_a
              .sort!{|x,y| x[0]-x[1]<=>y[0]-y[1]}
              .first

    day1=array.index(result[0])
    price1=array[day1]
    day2=array.index(result[1])
    price2=array[day2]
    profit=price2-price1


    puts "Best day to buy is: #{day1}, with price: #{price1}"
    puts "Best day to sell is: #{day2}, with price: #{price2}"
    puts "Profit: #{profit}"

  end
end

puts Stock.new.stock_picker([17,3,6,9,15,8,6,1,10])