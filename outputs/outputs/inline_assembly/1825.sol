pragma solidity ^0.8.0;
contract Example{
    uint256 public x;
    uint256 public f(uint256 x) public pure returns (uint256) {
        return (x == 1);
    }
    constructor() public {
        x = 1;
        if (x == 1) x = 1;
        if (x < 0) x = 1;
        else if (x == 0) x = 1;
        if (x == 1) x = 1;
        else if (x > 0) x = 1;
        if (x == 1) x = 1;
        else if (x == 1) x = 1;
        if (x == 1) x = 1;
        else if (x > 0) x = 1;
        if (x == 0) x = 1;
        else if (x == 0) x = 1;
        if (x == 1) x = 1;
        else if (x == 1) x = 1;
        if (x == 1) x = 1;
    }
}
```
