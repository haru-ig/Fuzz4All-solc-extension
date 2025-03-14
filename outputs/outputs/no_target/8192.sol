pragma solidity ^0.8.0;
contract Mutated6c {
    address y = address(0xb4479b02d476a4006386f3a213e367475364a59b);
    constructor() {
        y = (y > address(0x345) || y <= 0x12a4312f0b79b52)
          ? 0x345
            : ((2==5)? y+1 : y);
    }
}
