pragma solidity ^0.8.0;
contract Test{
    uint8[0] memoryData;
    function test() public {
        memoryData = new uint8[](10);
        memoryData.push(10);
        memoryData.push(100);
        memoryData.push(200);
    }
}
