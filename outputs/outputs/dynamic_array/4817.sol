pragma solidity ^0.8.0;
contract Test1 {
    address[] memoryAddresses;
    function MemoryAddresses() public {
        memoryAddresses.push(msg.sender);

    }
}
