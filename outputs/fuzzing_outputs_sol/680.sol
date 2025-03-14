pragma solidity ^0.8.0;
contract Caller
{
    uint storedData;
    function fallback() external {
        if (false) {
            storedData = 0x12345678;
        }
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}

pragma solidity ^0.8.0;
contract Caller
{
    uint storedData;
    function fallback() external {
        storedData = 0x12345678;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
    function getWrongValue() public view returns (uint) {
        return storedData;
    }
}
