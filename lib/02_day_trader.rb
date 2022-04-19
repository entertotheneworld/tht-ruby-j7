def day_trader(array)

    if array.class == Array
        array.each {|num| 
            return "Je ne prends que les tableaux d'entier positif en entré !" if num.class != Integer
        }

        array_operation = {}
        # On calcul la differnece entre toutes les valeurs du tableau et on les stock dans un hash
        array.each_with_index{|num,index|
            array.each_with_index{ |n,i|
                key_result = [index,i]
                array_operation[key_result] = n - num
            }
        }

        # On supprime les résulatats non désiré
        array_operation.delete_if {|key, value|
            key[0] > key[1] || value < 0
        }
        result = []
        # On trouve notre résultat
        array_operation.each {|key,value|
            result = key if value == array_operation.values.max
        }
        return result
    else 
        return "Je ne prends que les tableaux d'entier positif en entré !"
    end

end
