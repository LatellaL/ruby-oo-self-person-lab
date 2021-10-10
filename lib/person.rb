# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    #happiness
    def happiness=(point) 
        @happiness = point
        if @happiness > 10 
           @happiness = 10 
        elsif @happiness < 0 
           @happiness = 0 
        end 
      end

  #hygiene
  def hygiene=(point) 
      @hygiene = point 
      if @hygiene > 10 
       return @hygiene = 10 
      elsif @hygiene < 0 
       return @hygiene = 0 
    end 
  end 
 
     #happy?
     def happy?
        if @happiness > 7
            true 
        else
            false 
        end
    end

    #clean?
    def clean?
      if @hygiene > 7
         true
      else
        false
        end
    end

    #get_paid
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    #take_bath
    def take_bath
        self.hygiene = @hygiene + 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    #work_out
    def work_out
        self.happiness= @happiness + 2
        self.hygiene= @hygiene - 3
        return"♪ another one bites the dust ♫"
    end

    #call_friend
    def call_friend(friend)
        self.happiness= @happiness + 3
        friend.happiness= friend.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    #start_conversation
    def start_conversation(friend, topic)
        if topic == "politics"
          self.happiness= @happiness - 2
          friend.happiness= friend.happiness - 2
          return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
          self.happiness= @happiness + 1
          friend.happiness= friend.happiness + 1
          return "blah blah sun blah rain"
        else
          return "blah blah blah blah blah"
        end
      end

end
   





