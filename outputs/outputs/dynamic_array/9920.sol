pragma solidity ^0.8.0;
contract SemanticTest_v5 {
    uint public myArray;
    uint public _mintAmount;
    function setMint(uint _mint) public {
        myArray = _mint;
        _mintAmount = _mint;
        myArray += _mintAmount;
    }
    function addMintAmount() public {
        uint _mint = _mintAmount;
        myArray -= 1;
        myArray += _mint;
    }
}
