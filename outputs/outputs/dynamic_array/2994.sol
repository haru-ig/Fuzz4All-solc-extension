pragma solidity ^0.8.0;
 contract SymbolicEquality_AssignmentNestedArary_SemanticallyCompatible {
    uint[] x;
        constructor () public {
        x = [];
        x = [ 0 ];
        x = [ 0, 1, 2, 3 ];
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
