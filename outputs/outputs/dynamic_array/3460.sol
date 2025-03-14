pragma solidity ^0.8.0;
contract D {
    uint[][][] public v3;
    uint[][][] public v5;
    function multiply(uint a, uint b) public payable {
        v3[1][0][a] = b;
        v3[2][2][b] = a*b;
        v3[10][10][a*b] = a*b;
    }
}
