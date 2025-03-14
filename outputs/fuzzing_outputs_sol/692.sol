pragma solidity ^0.8.0;
contract Caller
{
    address addressWithoutFallbackModifier;


    uint storedData;
    function fallback() payable external {
        storedData = 0x23456789;
    }
    function getValue() external view returns (uint) {
        return storedData;
    }
}
