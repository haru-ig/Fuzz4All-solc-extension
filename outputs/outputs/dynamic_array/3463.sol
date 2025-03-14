pragma solidity ^0.8.0;
contract C {
    uint[][][] public v6;
    uint[][][] public v10;
    function multiply(uint a, uint b) public payable {
        v10[0][a][b] = b;
        v10[2][b][a] = a*b;
        v10[10][a][b]*=a*b;
    }
}
