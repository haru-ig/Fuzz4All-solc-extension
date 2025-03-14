pragma solidity ^0.8.0;
contract D {
    uint[][][] b1;
    uint c;
    constructor(uint[][][][] memory value) public {
        b1.push(0);
        b1[0].push(0);
        b1[0][0].push(0);
        b1[0][0][0].push(0);
        c = 0;
        b1 = value;
    }
}
