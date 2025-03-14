pragma solidity ^0.8.0;

contract CarryoutSafeDivision {
    function safeDivide(uint a, uint b) public pure returns (uint) {
        require(b > 0);
        return a/b + 1;
    }
}
```
