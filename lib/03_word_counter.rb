def word_counter(string, d)
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

    if string.class == String
        counter = {}
        string = string.tr('.,\'!?":', '').downcase.split

        string.each {|word|
            dictionnary.each{|word_dictionnary|
                if counter[word] && word == word_dictionnary
                    counter[word] += 1
                elsif counter[word_dictionnary] && word.include?(word_dictionnary)
                    counter[word_dictionnary] += 1
                elsif word.include?(word_dictionnary)
                    counter[word_dictionnary] = 1
                elsif word == word_dictionnary
                    counter[word] = 1
                end
            }


        }
        return counter
    else
        return "Je ne prends que des chaines de caractere !"
    end
end