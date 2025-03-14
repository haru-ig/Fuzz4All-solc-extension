pragma solidity ^0.8.0;
contract G {
    uint256[] x = [ 1, 2, 3 ];
    constructor(uint256[3] memory input) public {
        x.push(input[0]);
        x.push(input[1]);
        x.push(input[2]);
    }
}
