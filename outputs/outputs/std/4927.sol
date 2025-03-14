pragma solidity ^0.8.0;
contract Example {
    uint8 internal constant A = 128;
    uint8 constant B = 255;

    uint8 x;

    constructor(uint8 x) {
        x = x;
    }

    function hello() public pure returns (uint8) {
        return uint8(x.divMod(2).quot.mulMod(A, uint8(A).sub(1)));
    }
}
