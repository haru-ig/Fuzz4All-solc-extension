pragma solidity ^0.8.0;

contract SymbolicEquality_AssignmentNestedArary2 {
    uint[] x;
        constructor () public {
        x[2] = 2;
        x[1] = 1;
        x[0] = 0;
        x[0] = 5;
        x[0] = 9;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
contract SymbolicEquality_AccessAndCalldataArray2 {
    uint[] x;
        constructor () public {
        x[2] = 2;
        x[1] = 1;
        x[0] = 0;
        x = new uint[](3);
        x[0] = 5;
        x[0] = 9;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
