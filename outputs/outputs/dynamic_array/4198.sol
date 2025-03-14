pragma solidity ^0.8.0;
contract G {
    uint256[2] x = [ 1, 2 ];
    constructor(uint256[2] memory input, uint arg) public {
         uint256[2] memory prev = x;
         x[0] = input[0];
         x[1] = input[1];
         prev[1] = prev[0];
         prev[1] = arg;
    }
}
