pragma solidity ^0.8.0;
library MutatedLibrary {
    uint256 counter;
    constructor() public {
        counter++;
    }function changeCounter(uint256 _counter) public{
        counter=_counter;
    }
}
contract Mutated {
    uint256 public a;
    MutatedLibrary.counter public a;
    constructor(uint256 _a) public {
        a = a+1;
    }
}
```

## What to read next

In this chapter, you've learnt how inline assembly can be used within a Solidity contract and how to apply the appropriate tool to solve specific problems. To continue studying this chapter, I recomended you check out the following:
