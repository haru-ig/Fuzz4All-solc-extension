pragma solidity ^0.8.0;
contract SemanticTest_v2 {
    uint public myArray;
    uint public lastIndex;
    function setLastIndex(uint _lastIndex) public {
        myArray = uint128(_lastIndex);
        lastIndex = uint64(_lastIndex);
    }
    function addLastIndex() public {
        myArray = 1;
        lastIndex += 1;
    }
}
contract SemanticTest_v1 {
    uint public myArray;
    uint public lastIndex;
    function setLastIndex(uint _lastIndex) public {
        myArray = _lastIndex;
        lastIndex = _lastIndex;
    }
    function addLastIndex() public {
        myArray = 1;
        lastIndex += 1;
    }
}
