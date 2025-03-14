pragma solidity ^0.8.0;
 contract SemanityYulContract {
    uint internal contractCounter;
 uint constant c = 50;
    function subtract(uint x) internal pure returns (uint) {
        return c * 8 + x*c;
    }
    function power(uint x) internal pure returns (uint) {
        return x* c - 8;
    }
}
```
