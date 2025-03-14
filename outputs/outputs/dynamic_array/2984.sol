pragma solidity ^0.8.0;
contract SymbolicEquality_CalldataArray_Assignment {
    uint[] x;
    uint y;
        constructor () public {
        x = calldata.toUintArray();
        x = calldata.toUintArray();
    }
    function m() public view returns (uint[] calldata memory) {
        return x;
    }
}
