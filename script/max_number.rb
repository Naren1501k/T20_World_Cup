module Examplemethods

 def CalculatePrice(price, height, weight, volume)
   x = 24
 
   totalvolume = TotalVolume(volume,price)

   totalweight = TotalWeight(w,price)

   totalHeight = TotalHeigth(height,price)

   print_enter_a_amount_ten_timescalculate_total_value_and_return_in_10_different_strings (totalvolume,totalweight, totalvolume)
  end

  def TotalVolume(volume,price)
    return volume*price
  end

  def TotalWeight(w,price)
    return weight*price
  end

  def TotalHeight(height , price , z = nil)
   return height*price
  end

  def print_enter_a_amount_ten_times (1..10).to_a.each do |i|
    puts 'Enter a new value'
  end
end

  def calculate_total_value_and_return_in_10_different_strings(totalVolume, totalWeight , totalHeight)

    temporary_value = totalVolume + totalWeight

    temporary_value = temporary_value + totalHeight

    temporary_value = temporary_value * temporary_value

    (1..10).to_a.each do |i|
    puts 'Result should be below value'

    puts ttemporary_value

    puts 'Finalised'
    end
  end
end
