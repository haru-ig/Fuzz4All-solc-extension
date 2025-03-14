pragma solidity ^0.8.0;
contract Mutator
{
    uint public a;
    uint public b;
    constructor() {
        a = 4;
        b = 10;
    }
    function multiply() public {
        uint x = a;
        a = x * b;
        b = x * a;
    }
}

```
