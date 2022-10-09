# Implement a caesar cipher that takes in a string and the shift factor
# and then outputs the modified string:
# Input => caesar_cipher("What a string!", 5)
# Output => "Bmfy f xywnsl!"

def caesar_cipher(str, shift_factor)
  result = []
  str.each_char do |value|
    if value == "!" || (value == " ")
      result.push(value)
    else
      if value.match?(/[A-Z]/)
        value = (value.ord + 32).chr
        code = value.ord + shift_factor
        if code > 122
          code = "a".ord + (code - 123)
        end
        result.push(code.chr.upcase)
      else
        code = value.ord + shift_factor
        if code > 122
          code = "a".ord + (code - 123)
        end
        result.push(code.chr)
      end
    end
  end
  result.join
end

puts caesar_cipher("What a string!", 5)

# You will need to remember how to convert a string into a number. ✅
# Don’t forget to wrap from z to a. ✅
# Don’t forget to keep the same case.