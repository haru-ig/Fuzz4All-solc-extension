pragma solidity ^0.8.0;

contract G {
    uint256[3] x = [ 1, 2 ];
    constructor(uint256[3] memory input) public {
        uint256[3] memory mem = [1, 2, 3];
        x[0] = input[1];
        x[1] = input[0] ^ input[2];
        x[2] = input[1] ^ input[0];
    }
}
