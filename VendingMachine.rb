require './Introduction'
require './Drink'

class VendingMachine
  MONEY = [10, 50, 100, 500, 1000].freeze
  # （自動販売機に投入された金額をインスタンス変数の @slot_money に代入する）
  def initialize
    # 最初の自動販売機に入っている金額は0円
    @slot_money = 0
  end

  # 投入金額の総計を取得できる。
  def current_slot_money
    # 自動販売機に入っているお金を表示する
  puts "今の総計は#{@slot_money}円です。"
  end

  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  # 投入は複数回できる。
  def slot_money(money)
    # 想定外のもの（１円玉や５円玉。千円札以外のお札、そもそもお金じゃないもの（数字以外のもの）など）
    # が投入された場合は、投入金額に加算せず、それをそのまま釣り銭としてユーザに出力する。
    return false unless MONEY.include?(money)
    # 自動販売機にお金を入れる
    @slot_money += money
  end

  # 払い戻し操作を行うと、投入金額の総計を釣り銭として出力する。
  def return_money
    # 返すお金の金額を表示する
    puts "払い戻し：お釣りは#{@slot_money}円です。"
    # 自動販売機に入っているお金を0円に戻す
    @slot_money = 0
  end

  def money_case(input_number)
    if 1
      puts "失敗１"
    # else 2
    #   current_slot_money
    # elsif 3
    #   return_money
    else
      puts "失敗"
    end
  end

  def beginning
    puts "自動販売機にお金を投入してください"
    puts "1:お金を投入する"
    puts "2:合計を取得する"
    puts "3:払い戻しをする"
    input_number = gets.chomp
    number = ['1', '2', '3']
    while true
      if number.include?(input_number)
        return(input_number)
      else
        puts "数字が間違っています！"
        puts "自動販売機にお金を投入してください"
        puts "1:お金を投入する"
        puts "2:合計を取得する"
        puts "3:払い戻しをする"
        input_number = gets.chomp
      end
    end
  end
end
