pragma solidity ^0.8.0;
contract C {
    uint8 value;
    constructor() public {
        value = uint8(0xAC);
    }
    function test(uint8 x) public {
        if (x == 0x06) {
            while (true) {

            }
        }
        if (x == 0xff) {
            for (uint8 i = 7; i!= 10000000; i += 1000000) {

            }
        }
    }
}
