import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {

    //1

    private func swap(array : [Nat], j : Nat, i : Nat) : [Nat] {
        let mutable_array = Array.thaw<Nat>(array);
        let tmp = array[i];
        mutable_array[i] := mutable_array[j];
        mutable_array[j] := tmp;
        let immutable_array = Array.freeze<Nat>(mutable_array);
        return immutable_array;

    };
     
     
     
};