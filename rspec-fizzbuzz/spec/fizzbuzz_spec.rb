describe Fizzbuzz do
  before(:all) do
    @FB = Fizzbuzz.new
  end

  it "should return a number if a check is called that is not a multiple of 3 or 5" do
    expect(@FB.change_num_to_FB(7)).to eq 7
  end

  it "should return Fizz if a check is called that is a multiple of 3 but not 5" do
    expect(@FB.change_num_to_FB(9)).to eq "Fizz"
  end

  it "should return Buzz if a check is called that is a multiple of 5 but not 3" do
    expect(@FB.change_num_to_FB(20)).to eq "Buzz"
  end

  it "should return Fizzbuzz if a check is called that is a multiple of 3 and 5" do
    expect(@FB.change_num_to_FB(60)).to eq "Fizzbuzz"
  end

  it "should return an array following the fizzbuzz rules when an array of numbers is input" do
    expect(@FB.change_all_nums_to_FB([2,5,9,14,20,30])).to eq [2,"Buzz","Fizz",14,"Buzz","Fizzbuzz"]
  end
end
