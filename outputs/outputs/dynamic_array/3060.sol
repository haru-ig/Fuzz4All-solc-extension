pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V5 {
    uint[] public x;
    constructor (uint _z) public {
        x = new uint[](2);
    }
        function setPairs_V4(uint _a) public {
        x[1] = _a;
    }
}
