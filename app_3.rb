#欲しいもの管理アプリ

require "csv"

array = Array.new

CSV.foreach("list.csv", headers: true) do |row|
    array << row.to_h
end

loop {

    puts "\n---------------------"
    puts "欲しいもの管理アプリ"
    puts "---------------------"

    puts "好きな機能をお選びください"
    puts "\n1 => 欲しいものリストの参照"
    puts "2 => 欲しいものリストの追加"
    puts "3 => 欲しいものリストの変更"
    puts "4 => 欲しいものリストの削除"
    puts "5 => プログラムの終了"

    input = gets.to_i

    case input
    when 1
        puts "\n---------------------"
        puts "欲しいものリストの参照"
        puts "---------------------"
        puts "【欲しいものリスト】"
        array.each do |i|
            puts "#{i["name"]}：#{i["count"].to_i}個"
        end
    when 2
        i = 0
        loop {
            unless i == 0
                puts "\n他に欲しいものはありますか？"
                puts "1 => はい"
                puts "2 => いいえ"

                if gets.to_i == 2
                    puts "メニューに戻ります"
                    break
                else
                    puts "入力が正しくありません"
                    next
                end
            end

            puts "\n---------------------"
            puts "欲しいものリストの追加"
            puts "---------------------"
            
            puts "欲しいものはなんですか？"

            input = gets.chomp
            if input == ""
                puts "入力が正しくありません"
                break
            else
                count = 0
            
                array.each do |i|
                    if i["name"] == input
                        count = i["count"].to_i
                        i["count"] = count + 1
                    end
                end
                        
                if count == 0
                    array << {"name"=>input, "count"=>1}
                end

                puts "\n---------------------"
                puts "管理しておきます"
                puts "---------------------"
                puts "【欲しいものリスト】"
                array.each do |i|
                    puts "#{i["name"]}：#{i["count"].to_i}個"
                end
                i += 1
            end
            gets
        }
    when 3
    when 4
    when 5
        puts "プログラムを終了します"
        break
    else
        puts "入力が正しくありません"
    end
    gets
}

CSV.open("list.csv", "w") do |row|
    row << ["name", "count"]
    array.each do |i|
        row << [i["name"], i["count"]]
    end
end