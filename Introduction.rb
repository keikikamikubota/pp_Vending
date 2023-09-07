require './VendingMachine'
require './Drink'

class Introduction
  def self.starting
    vendingmachine = VendingMachine.new
    drink = Drink.new
    next_turn = true
    while next_turn
      next_turn = vendingmachine.beginning
    end
  end
end

Introduction.starting
