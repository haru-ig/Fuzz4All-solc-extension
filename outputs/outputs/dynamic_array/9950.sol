pragma solidity ^0.8.0;
contract SemanticTest {
    uint public lastIndex;
    address[] public myArrayAddress;
    function setLastIndex(uint _lastIndex) public {
        lastIndex = _lastIndex;
        myArrayAddress.push(0x01);
        myArrayAddress.push(0x02);
    }

    function modifyArray() public {
        lastIndex -= 1;
        myArrayAddress[lastIndex] = 0x03;
    }

    function incrementLastIndex() public {
        lastIndex += 1;
    }
}
