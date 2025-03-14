pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunction {
    uint256 [3] data;
    function setData(uint y) public { data = [y, x, x + y]; }
    uint256 x;
    function getData(uint k) public view returns (uint z)
    { z = data[k]; }
    fallback() external payable { x = 1; }
}
