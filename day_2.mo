import Nat8 "mo:base/Nat8";
import Nat32 "mo:base/Nat32";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Char "mo:base/Char";
import Blob "mo:base/Blob";

actor {
//1  
public func nat_to_nat8(n : Nat) : async Nat8 {
    if (n < 256) {
    return (Nat8.fromNat(n));
    } else {
        return 0;
    };
};

//2
public func max_number_with_n_bits(n : Nat) : async Nat {
    return ((2 ** n) - 1);
};

//3  -- 28.29-28.30: type error [M0055], cannot infer type of forward variable m
public func decimals_to_bits(n : Nat) : async Text {
        var m = n;
        var bits = "";
        while(m > 0){
            let remainder = m % 2;
            let m = m / 2;
            if(remainder == 1){
                bits := "1" # bits;
            } else {
                bits := "0" # bits;
            };
        };
        return(bits)
    };



//4
public func capitalize_character(c : Char) : async Char {
    let result = Char.toNat32(c);
    if(result > 96 and result < 123){
        return(Char.fromNat32(result - 32))
    } else {
        return(Char.fromNat32(result));
    };
    
};

//5
 func _capitalize_character(char : Char) : Char {
        let unicode_value = Char.toNat32(char);
        if(unicode_value >= 97 or unicode_value <= 122){
            return(Char.fromNat32(unicode_value - 32))
        } else {
            return (Char.fromNat32(unicode_value));
        };
    };

    public func capitalize_text(word : Text) : async Text {
        var new_word : Text = "";
        for(char in word.chars()){
            new_word #= Char.toText(_capitalize_character(char));
        };
        new_word;
    };

//6
public func is_inside(t : Text, c: Char) : async Bool {
    var res = false;
    for (char in t.chars()) {
        if (char == c) {
            res := true;
        };
    };
    return(res);
};
   // solution from devs :

   // public func is_inside(t : Text, c: Text) : async Bool {
   // let p = #text(1);
   // return(Text.contains(t,p));
   // };    
   
// 7

public func trim_whitespace(t : Text) : async Text {
    let p = #text(" ");
    return(Text.trim(t, p));
};

// 8 -- errors


// 9

    public func size_in_bytes(t : Text) : async Nat {
        let utf_blob = Text.encodeUtf8(t);
        let array_bytes = Blob.toArray(utf_blob); // Creates an array of bytes from a blob, by copying each element
        return(array_bytes.size()); 
    };


// 10


};