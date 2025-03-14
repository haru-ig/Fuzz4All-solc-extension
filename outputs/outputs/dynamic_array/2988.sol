pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary {
    uint[] x;
        constructor () public {
        x = new uint[]( sizeof(uint) * 4 );
        x = [ 0 ];
        x = [ 0, 1, 2, 3 ];
        x = [ 0, 1, 2, 3, 4 ];
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
