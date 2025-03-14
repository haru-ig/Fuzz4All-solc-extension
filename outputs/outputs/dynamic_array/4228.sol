pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    constructor(uint256[3] memory input) public {
        x[0] += input[0];
        x[1] += input[1];
        x[2] += input[2];
    }
}
