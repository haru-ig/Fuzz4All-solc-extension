pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicArary5 {
    uint[] internal x;
    uint internal _length;
    constructor () public {
        x = new bytes(0);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
