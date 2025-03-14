pragma solidity ^0.8.0;
contract SemanticTest {
    uint public myArray;
    uint public lastIndex;
    struct MyStruct {
        string str;
    }
    mapping(uint=>MyStruct) public myStructArray;
    function setLastIndex(uint _lastIndex) public {
        myArray = _lastIndex;
        lastIndex = _lastIndex;
    }
    function addLastIndex() public {
        myArray = 1;
        lastIndex += 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticTest {
    uint public myArray;
    uint public lastIndex;
    address[] public myArrayAddress;
    constructor() public {
        setLastIndex(1);
    }
    function setLastIndex(uint _lastIndex) public {
        myArray = 1;
        lastIndex = _lastIndex;
    }
    function addLastIndex() public {
        lastIndex += 1;
    }
}
