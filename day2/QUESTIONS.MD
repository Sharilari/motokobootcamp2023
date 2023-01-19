# Questions 🙋

1. Who controls the ledger canister? 
A: dfx canister --network ic info ryj13-tyaaa-aaaaa-aaaba-cai > shows r7inp-6aaaa-aaaaa-aaabq-cai as the Controller, which is NNS/Root afaik.

2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? How much nodes are running this subnet?  
A: Subnet: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe 
Nodes: 16 
(Source: https://dashboard.internetcomputer.org/subnet/pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe)

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
A: Voting Power is calculated as: (ICP staked + maturity staked) x Dissolve Delay Bonus x Age Bonus)
Given above informationen and the following information we can calculate the expected voting power:

Dissolve Delay Bonus: 4 years has a 50%
Age Bonus: A neuron with an age of 2 years has a 12.5% age bonus

(10 + 0[unknown]) x 1.5 x 1.125 = 16.875

4. What is wrong with the following code?
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```

A: return is missing and n is defined, but not used

import Nat "mo:base/Nat";
import Text "mo:base/Text";

actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    return(Nat.toText(m));
  };
}

5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
A: var in Front of English is missing to make it mutable if wanted
also "import Text "mo:base/Text";" is missing.



6. What is wrong with the following code?
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```
Arrays must be created with a fixed size. according to the Array Documentation it is recommended to use either Buffer class or te List class. Also "import Text "mo:base/Text";" & "import Array "mo:base/Array";" is missing.