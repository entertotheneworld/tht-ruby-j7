def sum_of_3_or_5_multiples(final_number)
    if final_number.class == Integer && final_number > 0
        sum_of_3_or_5_multiples = 0
        tab_sum = []
        for i in 0...final_number
            tab_sum << i if is_multiple_of_3_or_5?(i)
        end
        tab_sum.each{|num| sum_of_3_or_5_multiples += num}
        return sum_of_3_or_5_multiples
    else
        return "Yo ! Je ne prends que les entiers naturels. TG"
    end
end


def is_multiple_of_3_or_5?(n)
    if n % 3 == 0 || n % 5 ==0
        return true
    else
        return false
    end
end

puts sum_of_3_or_5_multiples(11)