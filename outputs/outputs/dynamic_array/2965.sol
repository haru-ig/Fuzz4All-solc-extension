pragma solidity ^0.8.0;
contract SymbolicEquality_Semantics {
    uint[] x;
        constructor () public {
        x = new uint[](10);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
