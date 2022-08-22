# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness_degree)
    if happiness_degree > 10
      @happiness = 10
    elsif happiness_degree < 0
      @happiness = 0
    else 
      @happiness = happiness_degree
    end
  end

  def hygiene=(hygiene_degree)
    if hygiene_degree > 10
      @hygiene = 10
    elsif hygiene_degree < 0
      @hygiene = 0
    else 
      @hygiene = hygiene_degree  
    end
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(beste)
    self.happiness += 3
    beste.happiness += 3
    "Hi #{beste.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(target, topic)
    if topic == "politics"
      self.happiness -= 2
      target.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      target.happiness += 1
      'blah blah sun blah rain'

    else
      'blah blah blah blah blah'


    end
  end





end
