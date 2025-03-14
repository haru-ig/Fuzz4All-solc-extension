pragma solidity ^0.8.0;
contract Test {
    function setToArray(uint256 index, uint32 value) public {
        dynArr[index] = value;
    }
}
