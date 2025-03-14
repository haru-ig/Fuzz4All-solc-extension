pragma solidity ^0.8.0;
contract Test7 {
    uint8[]  memory memoryData;

    function Modification() public {
        memoryData.push(0);
        memoryData.push(1);
        memory[28] = uint8(255);
        memoryData.push(255);
    }
}
