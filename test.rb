def cels_to_fahr(cels)
    cels * 9 / 5 + 32
end

#p cels_to_fahr(25)


def fahr_to_cels(fahr)
    cels = (fahr - 32) *5 / 9
    cels
end

#p fahr_to_cels(100)


def dice
    rand(6) + 1
end

#p dice


def dice10
    sum = 0
    10.times do
        sum += rand(6) + 1
    end
    sum
end

#p dice10


def prime?(num)
end

#prime(10)


#input_words = [‘Apple’, ‘Banana’, ‘Apple’, ‘Banana’, ‘Durian’, ‘Durian’, ‘Durian’]

def count_words(input)
   hash = Hash.new
   input.each do |i|
      hash[i] = 0
   end 
   input.each do |i|
      hash[i] +=1
   end 
   return hash
end 

#p count_words(input_words)
   

#str = "1,2,3, 4,5,6"
#array = str.split("")
#p array


#nums = gets.split.map(&:to_i)
#(1..nums[1]).each do |i|
#    w = gets.to_i
#    y = w / nums[0]
#    y = y.round
#    puts y * nums[0]
#end


n = gets.chomp
if n.delete(n[0]) == 0
    puts "Yes"
end