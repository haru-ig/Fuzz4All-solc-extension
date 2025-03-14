pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary1 {
    uint[] x;
        constructor () public {
        x = [ 0 ];
    }
    function foo() public view {
        x[0] = x;
    }
    function m() public view returns (uint[] memory) {
        uint[] memory y = new uint[](8);
        for(uint i = 0; i < 8; ++i ) {
        y[i] = x[i];
        }
        return [y, x, x, x, x, x, x, x];
    }
        function set() public view returns (uint[] memory) {
        x = [ 0, 1, 2, 3, 4, 5, 6, 7 ];
        return [x, x, x, x, x, x, x, x, x];
    }
}
