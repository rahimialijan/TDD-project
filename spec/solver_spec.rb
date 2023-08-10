require_relative '../solver'

describe Solver do
    describe '#factorial' do
    context 'when given a positive number or zero' do
        it 'should return factorial of the given number' do
            expect(subject.factorial(3)).to eq(6)
            expect(subject.factorial(0)).to eq(1)
        end
    end

    context 'when given a negative number' do
        it 'should raise an error' do            
            expect{ subject.factorial(-2) }.to raise_error('Negative number')
        end
    end
end

describe '#reverse' do
context 'when a string is given' do
    it 'should return the reversed string' do
        reversed_string = subject.reverse('hello')         
        expect(reversed_string).to eq('olleh')
    end
  end
end

describe '#fizzbuzz' do
context 'when the given number is divisible by 3' do
    it 'should return the string "fizz"' do
        three = subject.fizzbuzz(3)        
        expect(three).to eq('fizz')
    end
  end
 
context 'when the given number is divisible by 5' do
    it 'should return the string "buzz' do
        five = subject.fizzbuzz(5)         
        expect(five).to eq('buzz')
    end
  end
 
context 'when the given number is divisible by 3 and 5' do
    it 'should return the string "fizzbuzz"' do
        fifteen = subject.fizzbuzz(15)      
        expect(fifteen).to eq('fizzbuzz')
    end
  end
   
context 'when the given number is not divisible by 3 or 5' do
    it 'should return the given number as string' do
        two = subject.fizzbuzz(2)         
        expect(two).to eq('2')
      end
    end
  end
end    