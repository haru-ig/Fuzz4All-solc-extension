pragma solidity ^0.8.0;
contract SemanticTest {
    uint public myArray;
    uint public lastIndex;
    address[] public myArrayAddress;
     function setLastIndex(uint _lastIndex) public {
        myArray = 1;
        lastIndex += 1;
    }
    function addLastIndex() public {
        myArray -= 1;
        lastIndex += 1;
    }
     function setArraySize() public {
        myArrayLength();
    }
}
