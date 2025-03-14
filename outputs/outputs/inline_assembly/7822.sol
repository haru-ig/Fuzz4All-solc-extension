pragma solidity ^0.8.0;
contract L15_mutated {
    uint x;
    uint i;
    function setX(uint y) public {
        x = 100;
    }
    function setY(uint y) public {
        i = 2;
    }

    function checkMultiply() public pure returns (uint) {
		require(i == 2, "ERROR");
        return mutatedMultiply(x, x);
    }
}


pragma solidity ^0.8.0;
contract Maze6 {
pragma solidity 0.7.6;
function mutatedSolve(function(uint256 x, uint256 y, uint256 z) external pure returns (uint256)) public returns (uint256) {
        const uint256 xL = 5;
        const uint256 yL = 6;
        const uint256 zL = 7;
        const uint256 XL = xL - 1;
        const uint256 YL = yL - 2;
        const uint256 ZL = zL - 3;
        const uint256 XR = xL + 1;
        const uint256YR = yL + 2;
        const uint256ZR = zL + 3;
        return xL * yL * zL;
    }
}
```
---
# Maze 7

## Maze 11

## Maze 12

---
# Maze 8
