pragma solidity ^0.8.0;
contract Test2 {
    bytes32[] memoryBytes;
    function MemoryBytes() public {
        memoryBytes.push(bytes32(msg.sender));
    }
}
