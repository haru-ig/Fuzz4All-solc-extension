pragma solidity ^0.8.0;
contract Test6 {
    bytes[] memoryData;
    function MemoryData() public {
        memoryData = new bytes[](0);
        memoryData.push(abi.encodePacked('Hi'));
        memoryData.push(abi.encodePacked('Solidity'));
        memoryData.push(abi.encodePacked('Is'));
        memoryData.push(abi.encodePacked('Funny'));
    }
}
