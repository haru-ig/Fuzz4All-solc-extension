pragma solidity ^0.8.0;
contract SemanticTest {
    uint public lastIndex;
    address[] public myArrayAddress;
    function setLastIndex(uint _lastIndex) public {
        lastIndex = _lastIndex;
        myArrayAddress = new address[](lastIndex);
    }
    function incrementLastIndex() public {
        lastIndex += 1;
    }
}
