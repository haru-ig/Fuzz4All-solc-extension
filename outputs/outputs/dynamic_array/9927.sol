pragma solidity ^0.8.0;
contract SemanticTest_v4 {
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
    function set() public {
        myArray = 3;
        _mintAmount = 3;
        myArray += _mintAmount;
        myArray += 1;
        myArray += 1;
    }
}
