class Zoo
    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location

        @@all << self
    end

    def animals
        array_of_animals = Animal.all.select do |one_an|
            one_an.zoo.name  == self.name
        end
        all_animals = array_of_animals.map do |ani|
            ani.nickname
        end
        all_animals
    end
    
    def animal_species
        all_species = Animal.all.select do |one|
            one.zoo.name == self.name
        end

        specs = all_species.map do |spec|
            spec.species
        end
        specs.uniq
    end

    def find_by_species(animal_species)
        wow = Animal.all.select do |turd|
            turd.zoo.name == self.name
        end
        instances_ani = wow.select do |one_ani|
            one_ani.species == animal_species
        end 

        these = instances_ani.map do |instance|
            instance.nickname
        end
        these
    end

    def animal_nicknames
        wow = Animal.all.select do |turd|
            turd.zoo.name == self.name
        end
        all_nicks_in_zoo = wow.map do |instance|
            instance.nickname
        end
        all_nicks_in_zoo
    end

    def find_by_location(locate)
        instances_of_zoo = Zoo.all.select do |zed|
            zed.location == locate
        end
        instances_of_zoo.name
    end

    def self.all
        @@all
    end
end
