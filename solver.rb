class Solver   
        def factorial(number)
          if number.negative?
            raise 'Negative number'
          elsif number.zero?
            1
          else
            number * factorial(number - 1)
          end
        end
      
        def reverse(string)
          string.reverse
        end
end