require './VendingMachine'
require './Drink'

class Introduction
  def self.starting
    vendingmachine = VendingMachine.new
    drink = Drink.new('コーラ', 120, 5)
    # 飲み物の在庫追加したい時は、以下に
    next_turn = true
    while next_turn
      next_turn = vendingmachine.beginning
    end
  end
end

Introduction.starting
