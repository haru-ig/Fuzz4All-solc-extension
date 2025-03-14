pragma solidity ^0.8.0;
contract SemanticTest_v5{
    uint256[6] public myArray;
    uint256 public _mintAmount;
    constructor() public {
        for (uint256 i = 0; i < 6; i++) {
            myArray[i] = 9;
        }
        _mintAmount = 4;
    }
    function setMint(uint256 _mint) public {
        for (uint256 i = 4; i < 6; i++) {
            myArray[i] = 8;
        }
        _mintAmount = _mint;
    }
}
