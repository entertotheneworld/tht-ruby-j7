require_relative '../lib/03_word_counter.rb'


describe "word_counter method" do
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    it "should return a result when an string is given" do
      expect(word_counter("below",dictionnary)).to eq({"below"=>1, "low"=>1})
      expect(word_counter("Howdy partner, sit down! How's it going?",dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
    end

    it "should return an error when denying the user entry" do
        expect(word_counter(2, dictionnary)).to eq("Je ne prends que des chaines de caractere !")
        expect(word_counter(true,"paque")).to eq("Je ne prends que des chaines de caractere !")
        expect(word_counter(["Coucou", false,3],false)).to eq("Je ne prends que des chaines de caractere !")
    end
end