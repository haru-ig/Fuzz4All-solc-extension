pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V3 {
    uint[] public x;
    mapping(uint => uint) public y;
    struct mypair { uint aValue; uint bValue; }
    constructor () public {
        x = new uint[](2);
        x[1] = x[1+2] = x[2];
    }
        function setPairs_V3(mypair[] memory a, uint k) public {
        uint[] memory b = new uint[](2);
        b[0] = x[0];
        b[1] = a[k].bValue;
        x = b;
    }
}
