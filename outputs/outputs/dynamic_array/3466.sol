pragma solidity ^0.8.0;
contract C {
    uint[][][] public v100;
    function multiply(uint a, uint b) public payable {
        v100[0][a][b] = b;
        v100[2][b][a] = a*b;
        v100[0][a][b]*=a*b;
    }
}
