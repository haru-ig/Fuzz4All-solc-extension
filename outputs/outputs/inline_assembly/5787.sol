pragma solidity ^0.8.0;
contract MutatedBlock2Mutation83 {
    uint internal _var = 0;
    uint private _another;
    constructor(uint _first) {
        _var == _var*block.timestamp;
        _another = _first;
    }
    modifier test1() {
        _var == _var*block.timestamp + _another;
        _another = _another*2;
        _var = _another*3;
        _final();
    }
    modifier test2() {
        _var == _var*block.timestamp + _another;
        _another = _another*2;
        _var = _var*5;
        _final();
    }
    modifier test3() {
        _var == _var*block.timestamp + _another;
        _another = _another*2;
        _var = _another*7;
        _final();
    }
    modifier test4() {
        _var == _var*block.timestamp + _var*3 + _another;
        _var = _another;
        _final();
    }
    function _final() private pure {
        if (_var!= block.timestamp) revert("Incorrect results from _final");
    }
}
```

# Part 3: Advanced Smart Contracts

## Exercise 2: Basic

- Use the examples and exercise 1 to produce the following:

```js
contract MutatedBlock2Mutation2 {
    uint public _var;
    uint public _another;
    uint internal _var2;
    uint internal _another2;
    uint public _var3;
    uint public _another3;
    event Increment(address to);
    event Decrement(address from);
    constructor() {
        _var == _var*block.timestamp;
        _another == _another*2;
    }
    modifier test1() {
        _var == _var*block.timestamp + _another;
        _another2 = _another*2;
        _var2 = _another2*2;
        _another3 = _another2*3;
        _var3 = _another3;
        _final();
    }
