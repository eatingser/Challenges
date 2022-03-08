import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Iter "mo:base/Iter";

actor {
//1
public func nat_to_nat8(n : Nat) : async Nat8 {
    return(Nat8.fromNat(n));
};

//2
public func max_number_with_n_bits(n : Nat) : async Nat {
    return ((2 ** n) - 1);
};

//3


};