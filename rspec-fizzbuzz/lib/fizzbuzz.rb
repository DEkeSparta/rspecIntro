class Fizzbuzz
  def change_num_to_FB number
    if number % 3 == 0
      if number % 5 == 0
        return "Fizzbuzz"
      else
        return "Fizz"
      end
    else
      if number % 5 == 0
        return "Buzz"
      else
        return number
      end
    end
  end

  def change_all_nums_to_FB numbers
    new_nums = numbers * 1

    numbers.each_with_index do |number,i|
      new_nums[i] = change_num_to_FB number
    end

    return new_nums
  end
end
