pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation2 {
    uint[] public x;
    mapping(uint => uint) public y;
    mapping(uint => uint) public z;
    mapping(uint => uint) public w;
    constructor () public {
        x = new uint[](2);
        x[0] = x[0];
        x[1] = x[0];
        x.push(x[0]);
    }
        function m(uint _x, uint _y, uint _z, uint _w) public view returns (uint[] memory) {
        return x;
    }
}
