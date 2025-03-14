pragma solidity ^0.8.0;
contract SemanticallyDifferentExceptions {
    uint256 x = 3;
    bool d;
    int e;
    constructor() {
        d = false;
        e = -1;
    }
    function test() public {
        d = false;
        e = -1;
        uint256 v = 10;
        uint256 r = 10;
        x = 2 * 3 * 6 * r + d + (uint256)(x - (r + x/x))  + uint256(0) + (uint256)(0x5555555555555555) / 55555;
        uint256 w = (uint256(x/0)+x+1/uint256(x));
    }
}
