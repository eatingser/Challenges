import Array "mo:base/Array";
import Char "mo:base/Char";
import Nat "mo:base/Nat";


actor {

    // 1
    public func add(n : Nat, m : Nat) : async Nat {
        return (n+m);
    };

    // 2
    public func square(n : Nat) : async Nat {
        return (n*n);
    };

    //3
    public func days_to_second(n : Nat): async Nat {
        return (n * 86400);
    };

    //4
    var counter : Nat = 0;
    public func increment_counter(n : Nat): async Nat {
        counter := counter + n;
        return (counter);
    };
    public func clear_counter() : async () {
        counter := 0;
        return;
    };    

    //5
    public func divide(n : Nat, m : Nat) : async Text {
        if (n % m == 0) {
            return ("True");
        } else {
            return ("False");
        };
        };
    
    //6
    public func is_even(n : Nat) : async Text {
        if (n % 2 == 0) {
            return ("n is even");
        } else {
            return ("n isn't even");
        };
        };
    
    //7
    public func sum_of_array(array : [Nat]) : async Nat {
        var sum : Nat = 0;
        for (value in array.vals()) {
            sum := sum + value;
        };
        return (sum);
        };
    
    //8
   public func maximum(array : [Nat]) : async Nat {
      var max : Nat = 0;
      for (value in array.vals()) {
          if (value > max) {
              max := value;
          };
      };
      return (max);
   };
    
//9
    
    public func remove_from_array(array : [Nat], n : Nat) : async [Nat] {
        var new_array : [Nat] = [];
        for (vals in array.vals()) {
            if(vals != n) {
                new_array := Array.append<Nat>(new_array, [vals]);
            };
        };
        return(new_array);
    };

    
 

};
