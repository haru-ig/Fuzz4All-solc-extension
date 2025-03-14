pragma solidity ^0.8.0;
contract SemanticTest_v6 {
    uint public myArray;
    uint public _mintAmount;
    Constructor public constructor(uint _mint_amount) {
        myArray = _mint_amount;
        _mintAmount = _mint_amount;
        myArray += _mint_amount;
    }
    function addMintAmount() public {
        uint _mint = _mintAmount;
        myArray -= 1;
        myArray += _mint;
    }
}
