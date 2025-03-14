pragma solidity ^0.8.0;
contract Fallback
{
    function getValue() external view returns (uint) {
        return 0x12345678;
    }
}

pragma solidity ^0.8.0;
contract OverloadTest
{
    uint public integerResult = 1;
    uint public uintResult = 0;
    function callWithIntegerResult(uint integerValue) public pure returns (uint) {
        return integerValue + 1;
    }
    function getValue() public view returns (uint) {
        return uintResult;
    }
    function callWithIntegerAndZeroResult(uint integerValue, uint zeroValue) public pure returns (uint) {
        return integerValue + zeroValue;
    }
}
contract Overload
{
    function runWithIntegers(uint integerValue, uint zeroValue) public view returns (uint) {
        return integerValue + zeroValue;
    }
    function runWithoutIntegers(uint zeroValue) public {
        uintResult = zeroValue;
    }
}
