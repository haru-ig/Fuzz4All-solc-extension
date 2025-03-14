pragma solidity ^0.8.0;
contract SemanticTest {
    uint public lastIndex;
    address[] public myArrayAddress;

    constructor() public {
        setLastIndex();
    }

    function setLastIndex() public {
        lastIndex = 2**256;
        myArrayAddress = new address[](lastIndex);
    }
}
