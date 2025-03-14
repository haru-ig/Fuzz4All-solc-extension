pragma solidity ^0.8.0;
contract Caller {
    uint storedData = 0;
    function fallback() sendable external {
        storedData = 0x12345678;
    }
    function getValue() external payable view returns (uint) {
        return storedData;
    }
    function writeValue() external {
        storedData = 0x76543210;
    }
    function readValue() external view returns (uint) {
        return storedData;
    }
}
