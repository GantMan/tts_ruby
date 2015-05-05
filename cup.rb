class Cup #title cased

  def initialize
    puts "I'm alive! *SPARKLE*"
    @drink_amount = 0
  end

  def fill
    puts "I'm filled up!"
    @drink_amount = 100
  end

  def empty
    puts "ALL GONE!"
    @drink_amount = 0
  end

  def quantity
    puts @drink_amount
    @drink_amount
  end

  def sip amount=5
    puts "Just drank some!"

    if amount > @drink_amount
      @drink_amount = 0
    else
      @drink_amount -= amount # shorthand for @drink_amount = @drink_amount - 5
    end

  end

end