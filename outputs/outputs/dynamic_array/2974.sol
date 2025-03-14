pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary {
    uint[] x;
        constructor () public {
        x = [ 0 ];
        x = [ 0, 1, 2, 3 ];
        x = [ 0, 1, 2, 3, 4 ];
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
pragma solidity ^0.8.0;
contract SymbolicEquality_AccessAndCalldataArray {
    uint[] x;
        constructor () public {
        x = new uint[](3);
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
