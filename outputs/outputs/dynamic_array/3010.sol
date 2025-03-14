pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicArary5 {
    uint[] internal x;
    constructor () public {
        x = [1];
        x[1] = 0;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
