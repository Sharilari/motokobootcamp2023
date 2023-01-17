1. How much is the current memory capacity of a canister? 

A: 48 GiB (Proposal 92573)

2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter(value : Nat) : async () {
    counter := counter + 1;
  };
}
```

A: let is an immutable value, so it can't be changed. This will give an error as follow: "expected mutable assignment target"


3. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```

A: Text needs to be written in Syntax = "" and it can't be a number 0 since it's no Text but a Nat/Int.

4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.

A: False
