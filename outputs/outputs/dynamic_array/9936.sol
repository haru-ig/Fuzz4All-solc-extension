pragma solidity ^0.8.0;
contract SemanticTest_v0 {
    uint public myArray;
    uint public lastIndex;
    function setLastIndex(uint _lastIndex) public {
        lastIndex = uint64(_lastIndex);
    }
    function addLastIndex() public {
        myArray = 1;
        lastIndex += 1;
    }
}
