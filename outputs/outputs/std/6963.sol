pragma solidity ^0.8.0;
contract ArrayTest {
    mapping(uint256 => uint256) internal storageArray;
    uint256[] private storageArray2;
    uint256 public immutable uintValue1;

    constructor() {
        uintValue1 = 5;
        storageArray2 = memoryArrays[getUint() - 1][0];
    }
}
