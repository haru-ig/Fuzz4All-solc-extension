pragma solidity ^0.8.0;
contract C2 {
    uint[] public v2;
    uint[] public v3;
    function multiply(uint a, uint b) public payable {
        v2[1] = b;
        v3[2] = a*b;
    }
}
