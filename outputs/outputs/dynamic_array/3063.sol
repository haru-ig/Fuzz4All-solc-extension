pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V6 {
    uint[] public x;
    mapping(uint => uint) public y;
    mapping(uint => uint) private y2x;
    constructor (uint _z) public {
        x = new uint[](2);
    }
        function setPairs_V6() public {
        x[1] = 3*_z + y2x[0];
        y2x[0] = 2*_z;
    }
}
