1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?

Answer:
No, you can only save the stable memory. Stable types will persist an upgrade if you ad "stable" to the declaration of the variable. Non-stable types can be made persistant with the function and. This applies only to stable memory though. 

4 GiB heap memory.
Need to re-listen to lecture to answer. No good information in internetcomputer.org

2. How much accounts can a unique Principal own?

Answer:
A single Principal may have control over an (almost) unlimited number of Accounts. This is limited to a maximum  of 4,294,967,295 since the account is a 32-bit unsigned integer.

3. Can we safely upgrade a canister from interface A to interface B?

Interface A
```motoko
actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}
```motoko
Interface B
```motoko
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}
```

Answer: no, The state argument isn't given. Only variables which are Text-based. 