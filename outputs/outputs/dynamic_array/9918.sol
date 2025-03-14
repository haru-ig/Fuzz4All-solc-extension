pragma solidity ^0.8.0;
contract SemanticTest_v6 {
    uint public myArray;
    uint public _mintAmount;
    constructor() public {
        myArray = 99;
        for (uint i = 0; i < 10; i++) {
             myArray -= 1;
        }
        _mintAmount = 3;
    }
    function setMint(uint _mint) public {
        _mintAmount = _mint;
    }
}
