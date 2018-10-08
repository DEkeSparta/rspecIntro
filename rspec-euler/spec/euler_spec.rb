describe EulerProblems do
  before :all do
    @euler = EulerProblems.new
  end

  # ======= Problem 1 ==========

  it "should be able to check for multiples of 3 and 5" do
    expect(EulerProblems.is_multiple_of_3_5? 10).to be true
  end

  it "should return the sum of all multiples of 3 or 5 up to 1000 exclusive" do
    expect(@euler.problem1).to eq 233168
  end

  # ======= Problem 2 =========

  it "should sum all even fibonacci numbers up to 4 million" do
    expect(@euler.problem2).to eq 4613732
  end

end
