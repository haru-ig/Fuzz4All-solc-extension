pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicArary4 {
    uint[] internal x;
    constructor () public {
        x = [1];
    x = 2;
    x = new uint[](1);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
