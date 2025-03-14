pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation2 {
    uint[] public x;
    mapping(uint => uint) public y;
    mapping(uint => uint) public z;
    constructor () public {
        x = new uint[](2);
        x[0] = x[1];
        x[1] = x[1];
        x.push(x[1]);
    }
        function m(uint _x) public view returns (uint[] memory) {
        return x;
    }
}
