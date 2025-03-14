pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;

    function g() public returns (uint) {
        uint _tmp = x + 2;
        x += _tmp;
        return x* 2;
    }
}
```
