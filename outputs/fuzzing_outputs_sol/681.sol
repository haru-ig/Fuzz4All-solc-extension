pragma solidity ^0.8.0;
contract Caller
{
    uint internal storedData;
    function fallback() external {
        storedData = 0x12345678;
    }
    function getValue() external view returns (uint) {
        return storedData;
    }
}
