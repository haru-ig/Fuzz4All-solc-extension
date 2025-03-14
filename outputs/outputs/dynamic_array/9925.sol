pragma solidity ^0.8.0;
contract SemanticTest_v4 {
    uint public myArray;
    uint public _mintAmount;
    function setMint(uint _mint) public {
        myArray += _mint;
        myArray -= _mintAmount;
    }
    function addMintAmount() public {
        uint _mint = 100;
        myArray -= 1;
        myArray += _mint;
    }
}

pragma solidity ^0.8.0;
contract SemanticTest_v3 {
    uint public myArray;
    uint public _mintAmount;
    function setMint(uint _mint) public {
        myArray += _mint;
        myArray -= _mintAmount;
    }
    function addMintAmount() public {
        uint _mint = _mintAmount;
        myArray += _mint;
        myArray -= _mintAmount;
    }
}
