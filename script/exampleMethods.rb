def max_number(num1, num2, num3, num4)
    max_value = num1
  
    if num2 > max_value
      max_value = num2
    end
  
    if num3 > max_value
      max_value = num3
    end
  
    if num4 > max_value
      max_value = num4
    end
  
    return max_value
  end
  
  # Example usage:
  puts max_number(5, 10, 3, 7)  # Output should be 10
  puts max_number(20, 15, 30, 25)  # Output should be 30
  
