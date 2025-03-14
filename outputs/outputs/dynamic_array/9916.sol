pragma solidity ^0.8.0;
contract SemanticTest_v9 {
    uint256[1] public myArray;

    uint256 public _mintAmount;

    constructor() public {

        myArray[0] = 9;
    }

    function setMint(uint256 _mint) public {
        _mintAmount = _mint;
    }
}
