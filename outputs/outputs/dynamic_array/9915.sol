pragma solidity ^0.8.0;
contract SemanticTest_v4 {
    mapping(uint256 => uint256) public myArray;
    uint256 public _mintAmount;
    constructor(uint256 _mint) public {
        for (uint256 i = 0; i < 1; i++) {
            myArray[i] = _mint;
        }
        _mintAmount = _mint;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }
}
