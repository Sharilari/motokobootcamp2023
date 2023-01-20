import Array "mo:base/Array";
import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Int "mo:base/Int";

actor {

/*1. In your file called `utils.mo`: create a function called `second_maximum` that takes an array [Int] of integers and returns the second largest number in the array.
second_maximum(array : [Int]) ->  Int; 
*/

    public func second_maximum(array : [Int]) : async Int {
        var largest : Int = 0;
        var secondlargest : Int = 0;
        let arraysorted : [Int] = Array.sort(array, Int.compare);
        for (val in arraysorted.vals()) {
            if(largest < val) {
                largest := val;
                secondlargest := largest;
            };
        };
        return secondlargest;
    };

/*2. In your file called `utils.mo`: create a function called `remove_even` that takes an array [Nat] and returns a new array with only the odd numbers from the original array. 

remove_event(array : [Nat]) -> [Nat];
*/
    public func remove_even(array : [Nat]) : async [Nat] {
        let ArrayE = Array.filter<Nat>(array, func x = x % 2 != 0);
        return ArrayE 
    };

/*3. In your file called `utils.mo`:  write a function `drop` <T> that takes 2 parameters: an array [T] and a **Nat** n. This function will drop the n first elements of the array and returns the remainder. 
> ⛔️ Do not use a loop. 

drop<T> : (xs : [T], n : Nat) -> [T]
useBuffer and filterEntries

*/

    public func drop<T>(xs : [T], n : Nat) : async [T] {
    let bufferdrop = Buffer.fromArray<T>(xs) : Buffer<T>;
    buffer.filterEntries(func(i, v) = i >= n)
    ;
    return Buffer.toArray(bufferdrop)
};
}
