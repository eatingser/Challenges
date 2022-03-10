import Nat "mo:base/Nat";
import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

actor {

    //1

    private func _swap(array : [Nat], j : Nat, i : Nat) : [Nat] {
        let mutable_array = Array.thaw<Nat>(array);
        let tmp = array[i];
        mutable_array[i] := mutable_array[j];
        mutable_array[j] := tmp;
        let immutable_array = Array.freeze<Nat>(mutable_array);
        return immutable_array;

    };

    //2

    public func init_count(n : Nat) : async [Nat] {
        let array : [var Nat] = Array.init(n,0);
         for (i in Iter.range(0, n - 1)){
             array[i] := i;
         };
        let result = Array.freeze<Nat>(array);
        return result;
    };

    // 3 -- looks logical, but gives an error, needs to work out >:(

    public func seven(array : [Nat]) : async Text {
        for (i in Iter.range(0, array.size() - 1)) {
            if (array[i] == 7) {
                return "Seven is found"
            } else {
                return "Seven is not found"
            };
        };
    };
     
     // 4

     // 5

     public func day_of_the_week(n : Nat) : async Text {
         let  week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
         if (n < 8) {
             return week[n - 1];
         } else {
             return  "null";
         };
     };

};