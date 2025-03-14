pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    uint256 [11] data;
    function setData(uint y) public { data = [y, x, x + y, x + x, x * x, x + y * x/2/2, x + x / 2, x / 5,
        x / 512,  x * x / 512, x > 0? 0 : 1, ~x, data + 2, data / 2]; }
    uint256 x;
    function getData(uint k) public view returns (uint z)
    { z = data[k]; }
    receive() external payable { x = 1; }
    fallback() external payable
    {
        x = 1;
    }
}
