pragma solidity ^0.8.0;
contract SymbolicEquality_MutatedArray {
    uint[] x;
        constructor () public {
        x = [0, 98, 4, 9, 0, 5];
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
