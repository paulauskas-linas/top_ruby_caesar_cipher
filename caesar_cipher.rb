def caesar_cipher(string, shift_value, encrypted = "")
    string.each_char do |char|
        sum = char.ord + shift_value
        #uppercase
        if char.ord.between?(65, 90)
            shift = ((sum - 65) % 26) + 65
            encrypted += shift.chr
        #lowercase
        elsif char.ord.between?(97, 122)
            shift = ((sum - 97) % 26) + 97
            encrypted += shift.chr
        #everything else
        else 
            encrypted += shift.chr
        end
    end
    encrypted     
end    