pragma solidity ^0.8.0;
contract G {
    uint256[] x = [ 1, 2, 3 ];
    uint256[3] memory input = [ 4, 5, 6 ];
    constructor(uint256[3] memory input) public {
        x.push(input[0]);
        x[2] = input[1];
        x = [ input[0], input[1] ];
    }
}
