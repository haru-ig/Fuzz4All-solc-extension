pragma solidity ^0.8.0;
contract TestLibrary {
    uint constant X = 1;
    uint constant Y = 2;

    function test(uint256 x) pure public returns (uint256) {
        return 1 == (x == (uint256)UintWrapper.x())? (uint160)y: uint256(x & ~uint256(uint160(1)));
    }
}







uint() == (false).

```
