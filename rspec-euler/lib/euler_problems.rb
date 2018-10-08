class EulerProblems
  def self.is_multiple_of_3_5? i
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
      total += self.class.is_multiple_of_3_5?(i) ? i : 0
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

end
