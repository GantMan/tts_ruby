class StarbucksCup

  # The initializer!
  def initialize
    puts "Hey I'm alive!!!!"
    @coffee_amount = 0
  end

  def fill
    puts "I'm filling with coffee!!!"
    @coffee_amount = 100
  end

  def empty
    puts "I'm all out now!"
    @coffee_amount = 0
  end

  # This removes a portion of coffee from the cup
  # and returns the remaining portion.
  def sip
    puts "just drank a lil"
    # Faster cleaner way
    @coffee_amount -= sip_amount
  end

  def how_much_coffee
    puts "You've got #{@coffee_amount}!"
  end

  def has_coffee?
    !@coffee_amount.zero?
  end

  private

  # Pretend this gets info from a server
  def sip_amount
    5
  end

end