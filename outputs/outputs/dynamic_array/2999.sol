pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary3 {
    uint[] x;
    constructor () public {
        x = [1];
    x[0] = 0;
        x[1] = 1;
    x[2] = 2;
    x[3] = 3;
        x = x;
    x[5] = 4;
    x[5] = 5;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
