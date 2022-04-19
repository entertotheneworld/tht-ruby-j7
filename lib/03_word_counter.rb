## Shakespeare
file_shakespeare = File.new("shakespeare.txt", "r")
size_shakespeare = File.size?( "shakespeare.txt" )
content_shakespeare = file_shakespeare.sysread(size_shakespeare)

## Gros mot
file_swear_words = File.new("swearWords.txt", "r")
size_swear_words = File.size?( "shakespeare.txt" )
content_swear_words = file_swear_words.sysread(size_swear_words)
@tab_swear_words = content_swear_words.split




def word_counter(string, d)
    
    if string.class == String
        counter = {}
        string = string.tr('.,\'!?":', '').downcase.split

        string.each {|word|
            @tab_swear_words.each{|word_dictionnary|
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

puts word_counter(content_shakespeare, @tab_swear_words)