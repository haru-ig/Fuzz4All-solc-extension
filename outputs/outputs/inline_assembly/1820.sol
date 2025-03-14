pragma solidity ^0.8.0;
contract Example{
    uint256 public x;
    constructor() public {
        x = 0;
        require(x == 0);
        x = 1;
        require(x == 1);
        x = 1;
        x = 1;
        x = 1;
        x = 0;
        x = 0;
    }
}
