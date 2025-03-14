pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation1 {
    uint[] public a;
    uint[] public b;
    constructor () public {
        a[1] = a[1];
    }
        function  m(uint _a) public view returns (uint[] memory) {
        return a;
    }
}
