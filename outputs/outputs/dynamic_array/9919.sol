pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    uint256[1] public myArray;
    uint256 public _mintAmount;
    constructor() public {
        for (uint256 i = 0; i < 1; i++) {
            (uint256 _size) storage storage = myArray[i];
        }
        _mintAmount = 3;
    }
}
