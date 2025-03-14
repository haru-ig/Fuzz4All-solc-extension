pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary {
     uint[] x;
        constructor () public {
        x = 0;
        if (!0 > 0 + 1) return;
        x = [ true, 3 ];
        x = [ 0, 1, 2, 3 ];
        x = [ 0, 1, 2, 3, 4 ];
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
