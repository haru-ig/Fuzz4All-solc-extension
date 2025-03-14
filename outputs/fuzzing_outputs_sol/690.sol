pragma solidity ^0.8.0;
contract MutatedCaller
{
    uint storedData;
    function mutatedValue() payable external {
        storedData = 0x12345678;
    }
    function getValue() external view returns (uint) {
        return storedData;
    }
}

pragma solidity ^0.8.0;
contract Differences
{
    uint storedData;
    function mutatedValue() payable external {
        storedData = 0x12345678;

contract MutatedCallerWithFallback
{
    uint storedData;
    function mutatedValue() payable external {
        storedData = 0x12345678;
        fallback();
    }
    function getValue() external view returns (uint) {
        return storedData;
    }
}

pragma solidity ^0.8.0;
contract Differences2
{
    uint storedData;
    function mutatedValue() payable external {
        storedData = 0x12345678;
        fallback();
    }
    function getValue() external returns (uint) {
        return storedData;
    }
    function fallback() payable external {
        storedData = 0x12345678;
    }
}
