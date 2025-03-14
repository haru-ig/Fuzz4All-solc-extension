pragma solidity ^0.8.0;
contract C {
    uint[][][] public v11;
    uint[][][] public v10;
    function multiply(uint a, uint b) public payable {
        v11[10][uint(uint64(a))][uint(uint64(b))] = a*b;
        v10[0][uint(uint64(b))][uint(uint64(a))] = a*b;
    }
}
