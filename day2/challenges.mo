/*# Coding challenges 🧑‍💻
1. Write a function **average_array** that takes an array of integers and returns the average value of the elements in the array.
average_array(array : [Int]) -> async Int. 
```
2. **Character count**: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
count_character(t : Text, c : Char) -> async Nat
```
3. Write a function **factorial** that takes a natural number n and returns the [factorial](https://www.britannica.com/science/factorial) of n.
factorial(n : Nat) ->  async Nat
```
4.  Write a function **number_of_words** that takes a sentence and returns the number of words in the sentence.
number_of_words(t : Text) -> async Nat 
```
5. Write a function **find_duplicates** that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
find_duplicates(a : [Nat]) -> async [Nat]
```
6. Write a function **convert_to_binary** that takes a natural number n and returns a string representing the binary representation of n.
convert_to_binary(n : Nat) -> async Text     
*/

import Array "mo:base/Array";
import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Int "mo:base/Int";

//Challenge 1 (only took me 5h; since I had unexpected rl-work-related things to do I will now focus on the core-project :) )

actor {
public func average_array(array : [Int]) : async Int {
    let sum = Array.foldLeft<Int, Int>(array, 0, func(a , b) {a + b});
    let size : Nat = array.size();
    return (sum/size);
};

// Challenge 2:

// public func count_character(t: Text, c: Char) : async Nat {

// no idea. Maybe somehow with text.toiter. 

}

// Challenge 3:

//public func factorial(n : Nat) : async Nat {



// Challenge 4:

//public func number_of_words(t : Text) -> async Nat{};


//loop!!


//charis alphabetical

// Challenge 5:

public func find_duplicates(a : [Nat]) : async [Nat] {
    var newarray : [Nat] = [];
    for (m in a.vals()) {
        let ArrayD : [Nat] = Array.filter<Nat>(a, func (x: Nat) : Bool {x == m});
        if(ArrayD.size() > 1) {
          newarray := Array.append(newarray, [m]);
        };
    };
    return newarray;
}

//buffer

// Challenge 6:

//convert_to_binary(n : Nat) -> async Text



}


