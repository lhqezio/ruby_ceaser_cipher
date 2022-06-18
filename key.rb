def ceaser_key(text,keys)
    new_text=""
    text.split('').each {
        |char|
        temp_ascii=char.ord
        shifted=temp_ascii+keys
        if(temp_ascii>=65&&temp_ascii<=90)
            if(shifted>90)
                shifted=65+shifted%90-1
            end
            new_text.concat(shifted.chr)
        elsif(temp_ascii>=97&&temp_ascii<=122)
            if(shifted>122)
                shifted=97+shifted%122-1
            end
            new_text.concat(shifted.chr)
        else
            new_text.concat(char)
        end
    }
    new_text
end
p "Input a String:"
i_text=gets.chomp
p "Enter a key"
i_keys=gets.chomp.to_i
p ceaser_key(i_text,i_keys)