pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    uint public myArray;
    uint _mintAmount;
    constructor() public {

        myArray = 99;
        for (uint i = 0; i < 10; i++) {
             myArray -= 1;
        }

        uint[] memory _mintableAccountsInContract;


        uint numMints = myArray;


        for (uint i = 0; i < _mintAmount; i++) {

            _mintableAccountsInContract.push(10 + _mintAmount/2 + i);
        }


        numMints = myArray;


        _mintAmount = 3;
    }
    function setMint(uint _mint) public {

        _mintAmount = _mint;
    }
}
