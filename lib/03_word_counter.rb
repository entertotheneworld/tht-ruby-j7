aFile = File.new("shakespeare.txt", "r")
size = File.size?( "shakespeare.txt" )
content = aFile.sysread(size)

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]


def word_counter(string, d)
    
    dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
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

puts word_counter(content, dictionnary)