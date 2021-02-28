def cipher(word, key)
    result = ""
    word.each_char do |c|
        if((c.ord >= 'a'.ord && c.ord <='z'.ord) || (c.ord>='A'.ord && c.ord <='Z'.ord))
            if(c.ord  <= 'z'.ord && c.ord + key > 'z'.ord)
                diff = key - ('z'.ord - c.ord)
                result += ('a'.ord + diff - 1).chr
            elsif(c.ord <= 'Z'.ord && c.ord + key > 'Z'.ord)
                diff = key - ('Z'.ord - c.ord)
                result += ('A'.ord + diff - 1).chr
            else
            result+= (c.ord + key).chr
            end
        else
            result += c
        end 
    end
    return result
end

puts cipher("What a string!", 5)