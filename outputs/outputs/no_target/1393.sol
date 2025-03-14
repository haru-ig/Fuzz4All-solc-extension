pragma solidity ^0.8.0;
contract A {
    constructor() public {
        uint256 x = uint256(0xFF) - 1;
        assert(x == 255);
        uint256 y = uint256(0xFF) + 1;
        assert(y == 0);
    }
}
