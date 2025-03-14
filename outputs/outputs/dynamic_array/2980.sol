pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary2 {
    uint[] x1;
    uint[] x2[2];
        constructor () public {
        x1 = new uint[](1);
        x1 = [ 1 ];
        x1 = new uint[](2);
        x1[1] = 1;
        x1[0] = 5;
        x2[1] = new uint[](2);
        x2[1][1] = 10;
        x2[1][0] = 11;
    }
        function m() public view returns (uint[] memory) {
        return x1;
    }
}
contract SymbolicEquality_ChangeNestedArarySizeAfterAssignment {
    uint[] x;
    uint[] x2;
        constructor () public {
        x = new uint[](1);
        x = [ 1 ];
        x2 = new uint[](1);
        x2[0] = 1;
    }
        function m() public {
        x = new uint[](2);
        x[1] = 1;
        x[0] = 5;
    }
}
contract SymbolicEquality_AssignmentNestedArary3 {
    uint[] x1;
    uint y1;
    uint[] x2[1];
        constructor () public {
        x1 = new uint[](1);
        x1 = [ 1 ];
        y1 = 1;
        x2[1] = new uint[](1);
        x2 = [ 0 ];
    }
        function m() public view returns (uint[] memory) {
        return x1;
    }
}
