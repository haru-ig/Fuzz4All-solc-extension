pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    uint myArray;
    uint mintAmount;
    constructor() public {
        myArray = 99;

    }
    function addMint(uint _mint) public pure returns (uint result) {
        result = _mintAmount + _mint;
        mintAmount = _mintAmount;
    }
    function setMint(uint _mint) public {
        mintAmount = _mint;
    }
}
