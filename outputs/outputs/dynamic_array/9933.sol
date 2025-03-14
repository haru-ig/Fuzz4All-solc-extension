pragma solidity ^0.8.0;
contract SemanticTest{
    uint public myArray;
    uint public _mintAmount;
    function setMint(uint _mint) public {
        myArray = _mint;
        myArray += 1;
        _mintAmount = _mint;
    }
    function addMintAmount() public {
        myArray = 1;
        myArray += _mintAmount;
        myArray -= 1;
        myArray += _mintAmount;
    }
}
