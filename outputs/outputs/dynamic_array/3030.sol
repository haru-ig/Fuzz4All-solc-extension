pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation {
    mapping(uint => uint[]) public y;
    uint[] public z;
    constructor () public {
       y.push(z);
        y.push(new uint[](1));
    }
}
