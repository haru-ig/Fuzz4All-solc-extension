pragma solidity ^0.8.0;
contract MutatedWithOverflow {
    uint256 constant x = 1;
    constructor() public {
        require(x*x*x*x*x*x == 257);
    }
}
