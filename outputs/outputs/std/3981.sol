pragma solidity ^0.8.0;
contract Mutate {
    function multiply_and_sum(uint x, uint y) public returns (uint) {
        uint z = x * y;
        x /= 10;
        y /= 10;
        z += x * y;
        if (x > y) {
            x += y;
        }
        return z;
    }
}
contract Difference {
    function subtract_int(uint x, uint y) public returns (uint) {
        return x - y;
    }
    function subtract_uint(uint x, uint y) public returns (uint) {
        return x - y;
    }
}
```
