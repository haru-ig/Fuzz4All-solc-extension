pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunction {
    uint256 [2] data;
    function setData(uint y, uint z, uint w) public { data = [y, z]; }
    function getData(uint w, uint k) public view returns (uint z)
    { z = data[k]; }
    fallback() external payable { x = 1; }
}
