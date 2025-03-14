pragma solidity ^0.8.0;

contract Mutated {
    function setA(uint256 x, uint256 y) public {
        (, uint b) = a;
    }
    function aEqualB(uint256 x) public view returns (bool) {
        return x == b;
    }
}
```
<fim_middle>
```
