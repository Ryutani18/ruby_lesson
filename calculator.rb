def calculator(price, tax, discount)
    return price * discount * (1 + tax)
end 

loop {

    puts "商品の値段を入力してください"
    input = gets.to_i

    puts "30%割引を適応しますか？"
    puts "1 => はい"
    puts "2 => いいえ"

    yes_or_no = gets.to_i

    case yes_or_no
    when 1
        a = calculator(input, 0.08, 0.7)
        
    when 2 
        a = calculator(input, 0.08, 1)
    else
        next
    end

    puts "商品の値段は消費税込みで#{a}円です"
    

    puts "\nデータに記録を追加しますか？"
    puts "1 => はい"
    puts "2 => いいえ"

    yes_or_no = gets.to_i

    case yes_or_no
    when 1
        next
    when 2 
        next
    else
        next
    end

}