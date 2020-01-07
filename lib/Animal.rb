class Animal
    attr_reader :species , :nickname
    attr_accessor :weight, :zoo

    @@all = []

    def initialize(species, nickname, weight, zoo)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo

        @@all << self
    end


    def find_by_species(ani_species)
        wow = Animal.all.select do |turd|
            turd.species == ani_species
        end

        the_nick = wow.map do |one|
            one.nickname
        end
        the_nick
    end
    
    def self.all
        @@all
    end
end
