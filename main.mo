import Custom "custom";
import Animal "animal";

actor {

    //1 

    public type Custom = Custom.Custom;
    let bold_kitty : Custom = {
        name = "Gary";
        coolness_level = 9999;
        super_hit = "A whirlwind of wool clumps" 
    };

    public func fun() : async Custom {
        return bold_kitty;
    };

    // 2

    public type Animal = Animal.Animal;
    let whale : Animal = {
        specie_of_type = "Eubalaena";
        energy = 15;
   
    };

    //3 dfx canister call day_4 animal_sleep '(record {specie_of_type="ff"; energy=16})'

    public func animal_sleep(animal : Animal) : async Animal {
        var sleeping : Animal = {
            specie_of_type = animal.specie_of_type;
            energy = animal.energy - 10;
        };
        return sleeping;
    };

    //4

    


}