1. True or False: the Internet Computer has a unique public key that can be used to verify responses coming from any subnets.
Answer: 

True. one of the crucial parts that makes dfinitys chain-key technology different to other traditional blockchains.  

2. True or False: when I realize an update call, the boundary node will participate in the consensus but not during query calls.

Answer:
False. In general update calls need consensus (processed by all nodes), query calls are processed by a single node. The boundary nodes are a layer above the consensus nodes which serve different purposes (e.g. Translating HTTP requests).

3. True or False: I can create a certified variable that will certify the response of the following actor:
```
actor {
    public func hello(name : Text) : async Text {
        return ("hello # name");
    };
}
```
Answer: 
True, by adjusting as stated under https://internetcomputer.org/docs/current/references/ic-interface-spec#certificate