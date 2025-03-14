pragma solidity ^0.8.0;
contract Mutate29{
    uint256 x;
    constructor (uint[3] memory a, uint[2] memory b) public {
        x = a[1];
        a[1] ^= 0xf;
        a[2] ^= 0xf;
        uint256[2][2] memory x;
        uint256[2][2] memory y;
        y[0][0] = b[0];
        y[0][1] = b[1];
        y[1][0] = b[0];
        this.test();
    }
    function test () public {
        if (x > 0x8) x = x + 1;
    }
}
