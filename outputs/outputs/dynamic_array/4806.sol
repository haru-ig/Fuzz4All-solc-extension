pragma solidity ^0.8.0;

contract Test5 {
    uint8[] memoryData;

    function MemoryData() public {
        memoryData = new uint8[](0);
    }

    function Test1() public {
        uint8[] memory otherData = new uint8[](0);
        setOtherData(otherData, 1);
    }
    function setOtherData(uint8[] memory, uint8) public {
        memoryData = otherData;
    }
}
