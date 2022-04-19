require_relative '../lib/02_day_trader.rb'


describe "day_trader method" do
    it "should return a result when an array  is given" do
      expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
      expect(day_trader([23, 89, 67, 4, 76, 982, 65, 12])).to eq([3,5])
      expect(day_trader([2,87,87,3,87,90,98765])).to eq([0,6])
      expect(day_trader([54,78,23,625,876,635,9753,7634,234,765,12,3])).to eq([2,6])
    end
  
    it "should return an error when denying the user entry" do
      expect(day_trader(2)).to eq("Je ne prends que les tableaux d'entier positif en entré !")
      expect(day_trader(true)).to eq("Je ne prends que les tableaux d'entier positif en entré !")
      expect(day_trader("Coucou")).to eq("Je ne prends que les tableaux d'entier positif en entré !")
      expect(day_trader(["Coucou", false,3])).to eq("Je ne prends que les tableaux d'entier positif en entré !")
    end
end