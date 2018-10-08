describe EulerProblems do
  before :all do
    @euler = EulerProblems.new
  end

  # ======= Problem 1 ==========

  it "should be able to check for multiples of 3 and 5" do
    expect(@euler.is_multiple_of_3_5? 10).to be true
  end

  it "should return the sum of all multiples of 3 or 5 up to 1000 exclusive" do
    expect(@euler.problem1).to eq 233168
  end

  # ======= Problem 2 =========

  it "should sum all even fibonacci numbers up to 4 million" do
    expect(@euler.problem2).to eq 4613732
  end

  # ======= Problem 3 =========

  it "should check if an integer is a factor or not" do
    expect(@euler.is_factor?(123,3)).to be true
  end

  it "should check if an integer is prime" do
    expect(@euler.is_prime?(29)).to be true
  end

  it "should check if an integer is not prime" do
    expect(@euler.is_prime?(28)).to be false
  end

  it "should return the largest prime factor of 600851475143" do
    expect(@euler.problem3).to eq 6857
  end

end
