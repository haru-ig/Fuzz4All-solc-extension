pragma solidity ^0.8.0;

contract ConstantAccessBlock03 {

    uint constant private constantA = 0;
    uint constant private constantB = 0;

    function test() public pure {
        uint _var1;
        uint _var2;
        _var1 := constantA;
        _var2 := constantB;
    }
}
```
