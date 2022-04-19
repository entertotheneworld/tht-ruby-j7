def caesar_cipher(string,key = 1)
    if string.class == String && key.class == Integer && key >= 0
        string = string.split("")
        
        string.map! {|character| caesar_cipher_letter(character,key)}

        return string.join("")
    else
        return "Yo ! Je ne prends que les chaines de caractere. TG"
    end
end

def caesar_cipher_letter(character,key = 1)
    key = key % 26 if key > 26
    character = character.ord
    
    if (character > 64 && character < 91) || (character > 96 && character < 123)
        character += key

        if (character > 122) || (90 < character && character < 97) || (character > 96 && (character - key) < 91 && (character - key) > 64)
            then character = character - 26
        end
    end
    character = character.chr
end

puts caesar_cipher("What a string!",-5)





