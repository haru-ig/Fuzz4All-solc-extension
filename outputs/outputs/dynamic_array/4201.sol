pragma solidity ^0.8.0;
contract G {
    uint256 x = 8;
    uint256[2, 3, 4] memory x2;
    constructor(uint256[2] memory input) public {
        uint256[2] memory prev = x2;
        x2 = prev;
        x2[0] = input[1];
        x2[1] = input[0];
        prev[1] = prev[0];
        prev[1] = 10;
    }
}
