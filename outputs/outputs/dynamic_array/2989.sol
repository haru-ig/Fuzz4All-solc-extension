pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary {
    uint[3] x;
    constructor () public {
        x = [ 0 ];
        x[0] = 1;
        x[1] = 2;
        x[2] = 3;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
