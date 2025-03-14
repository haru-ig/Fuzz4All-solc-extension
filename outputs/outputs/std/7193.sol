pragma solidity ^0.8.0;
contract MutateM1 {
    function test(uint8[4] memory b) public pure {
        uint8 v = 0xff;
        for (uint8 i = 0; i < 4; i += 1) {
            b[i] ^= (0x11 & uint8(uint(v >> 24))) ^ 0xff ^ (0x11 & uint8(uint(v >> 16))) ^ 0xff ^ (0x11 & uint8(uint(v >> 8))) ^ 0xff ^ (0x11 & uint8(uint(v >> 0))) ^ 0xff;
            v >>= 8;
        }
    }
}
