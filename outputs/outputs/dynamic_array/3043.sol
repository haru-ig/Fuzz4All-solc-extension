pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentConditionalModulation {
    uint[] public x;
    mapping(uint => uint) public y;
    struct mypair { uint aValue; uint bValue; }
    constructor () public {
        x = new uint[](3);
        x[0] = x[2];
        x[1] = x[2];
        x.push(x[2]);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }

        function a1a2() public {
        x[1] = x[1];
        x.push(x[1]);
    }
        function a1a2a3(uint b) public {
        x[1] = b;
        x.push(b);
    }
        function a10(uint b) public {
        x[1] = b;
        x[0] = b;
        x.push(b);
    }
        function c(uint b) public {
        x[1] = b;
