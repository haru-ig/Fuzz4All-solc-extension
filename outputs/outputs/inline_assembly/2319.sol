pragma solidity ^0.8.0;
contract Storage
{
    uint a;
    constructor() public {
        a = 10;
    }
}
contract StorageAndComputation
{
    uint public a;
    uint public b;
    Storage storage st = new Storage();
    StorageAndComputation(uint a_, uint b_) public {
        a = a_;
        b = b_;
    }
    function multiply() public {
        uint x = a;
        a = b * a;
        b = x * b;
    }
}
```
