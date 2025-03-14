pragma solidity ^0.8.0;
contract SemanticTest {
    SemanticTest_v4 public semanticTest1;
    SemanticTest_v5 public semanticTest2;
    SemanticTest_v6 public semanticTest3;

    constructor(SemanticTest_v4 _semanticTest1, SemanticTest_v5 _semanticTest2,SemanticTest_v6 _semanticTest3) public {
        semanticTest1 = _semanticTest1;
        semanticTest2 = _semanticTest2;
        semanticTest3 = _semanticTest3;
    }
    function() external payable {}
}

contract SemanticTest_v6 {
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
    }
}

contract SemanticTest_v5 {
    uint public myArray;

    function setMint(uint _mint) public {
        myArray = _mint;

        uint[] memory array = new uint[](_mint);

    }
    function addMintAmount() public {
        myArray += _mintAmount;
    }

}
