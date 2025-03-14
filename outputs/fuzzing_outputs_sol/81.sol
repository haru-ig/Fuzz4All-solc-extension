pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionOneThree {
    uint256 [3] data;
    function setData(uint256 k, uint256 y) public { data[k] = y; }
    uint256 x;
    function getValue(uint256 k) public view returns (uint256)
    { return data[k]; }
    function getValueAndCall(uint256 y) public payable returns (uint256)
    {
        value = y;
        value = 0x0;
        return value;
    }
    uint256 value;
    function getData(uint k) public view returns (uint)
    { return data[k]; }
    fallback() external payable
    {
        value = 1;

    }
}
contract MyCallsReceiveAndFallbackFunctionOne {
    uint256 [3] data;
    function setData(uint k, uint256 y) public { data[k] = y; }
    uint256 value;
    function getData(uint k) public view returns (uint)
    { return data[k]; }
    receive() external payable { value = 1; }
    fallback() external payable
    {
        value = 1;
    }
}


            callSomething(bytes4(keccak256("setData(uint256)")), uint256(
