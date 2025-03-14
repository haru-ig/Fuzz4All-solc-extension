pragma solidity ^0.8.0;
contract Mutate13 {
    uint128 public x;
    uint8 public constant y = 10;
    constructor(uint8 s) public {
        uint128 maxU128 = 127 * (one - one >> 7);
        x = min(maxU128, s);
    }
}
