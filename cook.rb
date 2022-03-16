#献立アプリ

puts "食材を入力してください。"
puts "(入力が終わったらEnterを入力してください)"

array = Array.new

loop {
    x = gets.chomp
    if x == ""
        break
    else
        array << x
    end
}

str = array.join(" ")

puts "-----------------"
puts "料理を検索しています..."


puts "-----------------"
puts "以下の結果が検出されました。"

