pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    uint256 [3] data;
    function setData(uint256 k) public { data[k] = x; }
    uint256 value;
    function getValue(uint256 k) public view returns (uint256)
    { return data[k]; }
    function getValueAndCall(uint256 y) public payable returns (uint256)
    {
        value = y;
        return value;
    }
    uint256 x;
    function getData(uint k) public view returns (uint)
    { return data[k]; }
    fallback() external payable
    {
        x = 1;
    }
}

pragma solidity ^0.8.0;
contract MyCallsReceiveAndFallbackFunction {
    uint256 [3] data;
    function setData(uint k, uint256 y) public { data[k] = y; }
    uint256 x;
    function getData(uint k) public view returns (uint)
    { return data[k]; }
    receive() external payable { x = 1; }
    fallback() external payable
    {
        x = 1;
    }
}
