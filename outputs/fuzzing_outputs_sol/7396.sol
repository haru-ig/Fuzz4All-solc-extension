pragma solidity ^0.8.0;
contract MutateExample {
    uint8[] public memory memoryArray;
    uint8 public data;

    function getMemory() public pure returns (uint8) {
        return memoryArray[uint256(data)];
    }

    function setMemory(uint8 index, uint8 data_) public {
        memoryArray[uint256(data_)] = index;
    }
}
