pragma solidity ^0.8.0;
contract C {
    uint[] public v6;
    uint[3] public v10;
    function multiply(uint a, uint[3] memory b) public payable {
        v10[0] = a;
        v10[1] = b[0];
        v10[2] = b[1];
        v10[3] = b[2];
        v10[10] = a*b;
    }
}
