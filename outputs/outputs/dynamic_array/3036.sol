pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryMutator {
    uint[] public x;
    mapping(uint => uint) public y;
    constructor () public {
        x = new uint[](3);
        x[1] = x[2];
        x[2] = x[0];
        x[1] = x[2];
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
