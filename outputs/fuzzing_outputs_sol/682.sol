pragma solidity ^0.8.0;
contract Caller
{
    uint storedData;
    function fallback() external {
        storedData = 0x12345678;
    }
    function getValue() external pure returns (uint) {
        return storedData;
    }
}
