require 'pry'
class CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times do @cart << title end
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@total * @discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total = 0
  end
end
