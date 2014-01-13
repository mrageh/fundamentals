class Wallet

  attr_reader :cents
  COMMON_COINS = {penny: 1, nickel: 5, dime: 10, quarter: 25, dollar: 100}

  def initialize
    @cents = 0
    @present_coins = []
  end

  def <<(money)
    @present_coins << money
    @cents += COMMON_COINS[money]
  end

  def take(*fees)
    fees.each do |fee|
      if @present_coins.include?(fee)
        @present_coins.delete_at(@present_coins.index(fee) || @present_coins.length)
        @cents -= COMMON_COINS[fee]
      end
    end
  end
end
