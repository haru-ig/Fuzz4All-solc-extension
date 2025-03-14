pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentAndAccessMethod {
    uint[] x;
        constructor () public {
        x = new uint[](11);
        x += x;
        x[5] += x[1];
        x[1] += x[1];
        x[9] += x[1];
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
        function m1() public view returns (uint[] memory) {
    uint[] memory _tmp = x.alloc;
    return _tmp;
}
    }
pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentsAndAccessMethod {
        constructor () public {

        x[0] = 0;

        uint[] memory _tmp = new uint[](10);
        x = _tmp;

        uint[] memory _tmp1 = m();
        x += _tmp1;

        for (uint i = 0; i < x.length; i++) {
            x[i] += x[i];
        }
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
