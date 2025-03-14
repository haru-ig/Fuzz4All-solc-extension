pragma solidity ^0.8.0;
contract SymbolicEquality_FixedArray {
    uint[] x;
        constructor () public {
        x = [0, 98, 4, 9, 5];
    }
        function s() public view returns (uint[] memory) {
        return x;
    }
}
