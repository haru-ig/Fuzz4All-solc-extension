pragma solidity ^0.8.0;
contract SymbolicEquality_MutatedArray_Mutator {
    uint[] x;
        constructor () public {
        x = [0, 1, 2, 3, 4, 5];
        x[0] = 5;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
