pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentAndAccessMethod {
    uint[] x = new uint[](10);
        constructor () public {
        x[0] = 0;
        x[4] = 4;
        x[5] = 5;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
