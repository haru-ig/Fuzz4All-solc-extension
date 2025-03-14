pragma solidity ^0.8.0;
contract Test6 {
    string[4] memoryData;
    function MemoryData() public {
        memoryData = new string[](0);
        memoryData[0] = "Hi World ";
        memoryData[1] = "Test ";
        memoryData[2] = "My ";
        memoryData[3] = "Awesome";
    }
}
