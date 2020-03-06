require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    def hygiene=(x)
        if x > 10
            @hygiene = 10
        elsif x < 0
            @hygiene = 0
        else
            @hygiene = x
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        new_hyg = @hygiene + 4
        self.hygiene = new_hyg
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        new_hyg = @hygiene - 3
        new_hap = @happiness + 2
        self.hygiene = new_hyg
        self.happiness = new_hap
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self_hap = self.happiness + 3
        friend_hap = friend.happiness + 3
        self.happiness = self_hap
        friend.happiness = friend_hap
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self_hap = self.happiness - 2
            friend_hap = friend.happiness - 2
            self.happiness = self_hap
            friend.happiness = friend_hap
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self_hap = self.happiness + 1
            friend_hap = friend.happiness + 1
            self.happiness = self_hap
            friend.happiness = friend_hap
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end


end