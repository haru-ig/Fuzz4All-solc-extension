pragma solidity ^0.8.0;
contract C {
    uint8 value;
    constructor() public {
        value = uint8(0xFF);
    }
    function test(uint8 x) public {
        if (x == 0x0) {
            value = uint8(x + 1);
        }
    }
}
