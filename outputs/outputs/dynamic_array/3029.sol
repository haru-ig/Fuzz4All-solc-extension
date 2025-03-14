pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation {
    uint[] public x;
    mapping(uint => uint) public y;
    mapping(uint => uint) public z;
    constructor () public {
        x = new uint[](2);
        x[0] = x[1];
        x[1] = x[0];
        x.push(x[0]);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
