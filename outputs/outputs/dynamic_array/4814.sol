pragma solidity ^0.8.0;
contract Test7 {
    bytes[] memoryData;
    function MemoryData() public {
        memoryData = new bytes[](memoryData.length+3);
        memoryData.push(abi.encodePacked('123'));
        memoryData.push(abi.encodePacked('Is'),abi.encodePacked('Funny'));
    }
}
