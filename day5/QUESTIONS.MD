1. True or False: we can prevent the heap being erased during upgrades by using a stable heap.
Answer:  Yes with the stable storage described under https://internetcomputer.org/docs/current/developer-docs/cdks/motoko-dfinity/upgrades#upgrade-safety


2. A.call() -> B.call() -> C How much time (or rounds of consensus) do we need to wait for an answer?
Answer: around 2s (1 round of consensus) in the same subnet or 4sec (2 rounds of consensus) if it's in another subnet. 

3. Is possible to realize an intercanister call in query mode?
Answer: yes, according to https://internetcomputer.org/docs/current/developer-docs/build/backend/intercanister-calls that's possible. 