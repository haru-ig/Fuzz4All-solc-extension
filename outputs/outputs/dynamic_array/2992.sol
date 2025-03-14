pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary2 {
    uint[] x;
        constructor () public {
        x = [ 0 ];
    x = [ 0, 1, 2, 3 ];
    x = [ 0, 1, 2, 3, 4 ];
    x = x;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
