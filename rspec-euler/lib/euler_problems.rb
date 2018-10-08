class EulerProblems
  def  is_multiple_of_3_5? i
    if i % 3 == 0 || i % 5 == 0
      return true
    else
      return false
    end
  end

  def problem1
    total = 0
    i = 1

    while i < 1000
      total +=   is_multiple_of_3_5?(i) ? i : 0
      i+=1
    end

    return total
  end

  # ====================================

  def problem2
    i = 1
    j = 2
    k = 0

    total = 0

    while i < 4000000 && j < 4000000
      total += j % 2== 0 ? j : 0
      k = j
      j += i
      i = k
    end

    return total
  end

  # ==================================

  def is_factor? number, factor
    return number % factor == 0 ? true : false
  end

  def is_prime? number
    root_num = number**0.5 + 1
    i = 2

    while i <= root_num
      if is_factor? number, i
        return false
      end
      i+=1
    end
    return true
  end

  def problem3
    number = 600851475143
    root_num = number**0.5
    small_ans = 0
    i=1

    while i<root_num
      if is_factor? number, i
        larger_factor = (number / i).to_i
        print "small:#{i} , large: #{larger_factor} \n"
        if is_prime? larger_factor
          return larger_factor
        elsif is_prime? i
          small_ans = i
        end
      end
      i+=1
    end

    return small_ans
  end

end
