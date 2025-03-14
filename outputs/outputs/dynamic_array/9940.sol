pragma solidity ^0.8.0;
contract SemanticTest2 {
    uint public myArray;
    uint public lastIndex;
    function setLastIndex(uint _lastIndex) public {
        myArray = _lastIndex;
        lastIndex = _lastIndex;
    }
    function addLastIndex() public {
        myArray = 4;
        lastIndex += 1;
    }
}
