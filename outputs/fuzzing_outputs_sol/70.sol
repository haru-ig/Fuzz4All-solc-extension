pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    uint256 [3] private data ;
    uint256 private x;
    function setData(uint y) public { data = [y, x, x + y]; }
    uint256 public w;
    function getData(uint k) public view returns (uint z)
    { z = data[k]; }
    receive() external { w -= 1; }
    fallback() external payable {
        w -= 1;
    }
}
