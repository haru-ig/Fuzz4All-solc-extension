pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary2 {
    uint[] x;
        constructor () public {
        x = [ 0 ];
        x = [ 0, 1, 2, 3 ];
        x = [ 0, 1, 2, 3, 4 ];
    }
        function m1() public view returns (uint) {
        return x[0];
    }
        function m2() public view returns (uint) {
        return uint(x[0]);
    }
}
