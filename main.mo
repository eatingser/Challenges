import Custom "custom";

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
}