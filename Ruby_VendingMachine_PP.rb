class Power_on
  def self.start_menu

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

class VendingMachine
  # ステップ０　お金の投入と払い戻しの例コード
  # ステップ１　扱えないお金の例コード

  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  #freezeがあるため、お金の額を変えられない。
  MONEY = [10, 50, 100, 500, 1000].freeze

  # （自動販売機に投入された金額をインスタンス変数の @slot_money に代入する）
  def initialize
    # 最初の自動販売機に入っている金額は0円
    @slot_money = 0
  end

  # 投入金額の総計を取得できる。
  def current_slot_money
    # 自動販売機に入っているお金を表示する
    @slot_money
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
    puts @slot_money
    # 自動販売機に入っているお金を0円に戻す
    @slot_money = 0
  end

  def money_case 
    # wallet = VendingMachine.new
    selected_number = Power_on.start_menu
    puts selected_number
    case selected_number
    when 1 
      puts "お金を投入してください"
      input_money = gets
      wallet.slot_money(input_money)
      puts "投入金額は#{@slot_money}です"
    when 2
    when 3
    else
      puts "予期せぬエラーです"
    end
  end
end

class Drink
  attr_accessor :name, :price, :stock
  
  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end
end

class Cola
  drink = Drink.new('コーラ', 120, 5)
  puts 'この自動販売機に初期状態で入っている飲み物は120円のコーラが5本入っています。' 
end

vm = VendingMachine.new
vm.money_case



# puts test.slot_money(10)
# puts test.slot_money(50)
# puts test.slot_money(100)
# puts test.slot_money(500)
# puts test.slot_money(1000)

# puts test.return_money