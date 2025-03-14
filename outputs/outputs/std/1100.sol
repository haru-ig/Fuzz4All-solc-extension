pragma solidity ^0.8.0;
contract Array {
    uint256[] public uintArray;
}
contract Array2 {
    struct Array2Struct {
        uint256[] array;
    }
    function f0() public pure {
        Array2.Array2Struct memory s;
        Array.uintArray = s.array;
    }
}
