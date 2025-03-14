pragma solidity ^0.8.0;
contract E {
    uint256 [3] x;
    uint256 y;
    constructor(uint256[2][3] memory input) public {
        (x, y) = input;
    }
}
