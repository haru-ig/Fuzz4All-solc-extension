pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentComplexNestedArary {
    uint[] y;
    uint y0;
        constructor () public {
        y = [ 0 ];
        y0 = y.length;
        y.length += 2;
        y.length = y0;
        y[0] = 1000;
        y[1] = 1001;
    }
        function m() public view returns (uint[] memory) {
        return y;
    }
}
