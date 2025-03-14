pragma solidity ^0.8.0;

contract F {
    uint[6] public x = [ 1, 2, 3, 4, 5 ];
    uint public z;
    constructor(uint[6] memory input) public {
        z = input[0];
        z += input[1];
        z += input[2];
        z += 1;
        z += input[3];
        z += input[4];
        z += input[5];
        z += 4;
        uint i = 0;
        while (~(i | 0)) {
            i = i + 1;
        }
        x[0] += i;
        x[1] += i;
        x[2] += i;
    }
}
