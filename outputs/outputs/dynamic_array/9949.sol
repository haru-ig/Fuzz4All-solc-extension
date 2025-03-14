pragma solidity ^0.8.0;
contract SemanticTest {
    uint public myArray;

    function changeLastIndex(uint _lastIndex) public {
        myArray = lastIndex + 1;
    }

    function setLastIndex(uint _lastIndex) public {
        lastIndex = _lastIndex;
    }



    function addLastIndex() public {
        myArray = 1;
        lastIndex += 1;
    }
}
