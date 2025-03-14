pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V5 {
    uint[] internal z;
    uint internal[] x;
    mapping(uint => uint) public y;
    constructor (uint _z) public {
        x = new uint[](2);
        z = new uint[](2);
        z[1] = _z;
    }
        function newAssignment_V5(uint _b, uint _c) public {
        x[0] = _b;
        x[1] = _c;
    }
        function addPairs_V3() public {
        x[0] = x[1];
        x[1] += 1;
    }
}
