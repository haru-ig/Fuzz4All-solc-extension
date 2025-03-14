pragma solidity ^0.8.0;
contract SemanticTest_EIP265 {
    uint256[1] public myArray;
    uint256 public _mintAmount;
    constructor() public {
        for (uint256 i = 0; i < 1; i++) {
            myArray.push(9);
        }
        _mintAmount = 3;
    }
    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }
}
