/*Write a function multiply that takes two natural numbers and returns the product.
multiply(n : Nat, m : Nat) -> async Nat

Write a function volume that takes a natural number n and returns the volumte of a cube with side length n.
volume(n : Nat) -> async Nat

Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.
hours_to_minutes(n : Nat) -> async Nat

Write two functions set_counter & get_counter .
- set_counter sets the value of counter to n.
- get_counter returns the current value of counter.
set_counter(n : Nat) -> async ()
get_counter() -> async Nat

Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.
test_divide(n: Nat, m : Nat) -> async Bool

Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.
is_even(n : Nat) -> async Bool  

Answer: */
import Nat "mo:base/Nat"

actor {
  public func mutliply(n : Nat, m : Nat) : async Nat {
    return Nat.mul(n, m)
  };
  public func volume(n : Nat) : async Nat {
    return Nat.pow(n, 3)
  };
  public func hours_to_minutes(n : Nat) : async Nat {
    return Nat.mul(n, 60) //unsure about it
  };
  var counter = 0;
  public func set_counter(n : Nat) : async () {
    counter:= n;
  };
  public func get_counter(n : Nat) : async Nat {
    return counter
  };
  public func test_divide(n : Nat, m : Nat) : async (Bool) {
    if(n % m == 0){
        return true;
    } else {
        return false;
        }
  };
  public func is_even(n : Nat) : async (Bool) {
    if(n % 2 == 0){
        return true;
    } else {
        return false;
        }
    }
}