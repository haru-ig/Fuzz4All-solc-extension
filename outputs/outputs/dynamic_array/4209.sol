pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    constructor(uint256[3] memory input, uint arg) public {
         uint256[3] memory prev = x;
         x[0] = input[0];
         x[1] = input[1];
         x[2] = input[2];
         prev[2] = prev[1];
         prev[1] = arg;
    }
}
