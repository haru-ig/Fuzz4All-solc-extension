pragma solidity ^0.8.0;
contract SemanticTest_v2{
    uint public myArray;
    uint public _mintAmount;
    function setMint(uint _mint) public {
        myArray += _mint;
        myArray += _mintAmount;
    }
    function addMintAmount() public {
        myArray += _mintAmount;
    }
}
contract SemanticTest_v1{
    uint public myArray;
    uint public _mintAmount;
    function setMint(uint _mint) public {
        myArray += _mintAmount;
        myArray += _mint;
    }
    function addMintAmount() public {
        myArray += _mintAmount;
        myArray += _mint;
    }
}
