pragma solidity ^0.8.0;
@anonymous
contract SemanticTest_v5{
    uint public myArray;
    uint public _mintAmount;
    function setMint(uint _mint) public {
        myArray = _mint;
    }
}
