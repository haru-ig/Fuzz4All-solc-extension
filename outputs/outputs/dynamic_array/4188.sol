pragma solidity ^0.8.0;
contract F {
    uint[6] public x = [ 1, 2, 3, 4, 5 ];
    uint public z;
    constructor(uint[6] memory input) public {
        z = x[0] + x[1] + x[2] + 1;
        x[0] += input[3];
        x[1] += input[4];
        x[2] += input[5];
    }
}
