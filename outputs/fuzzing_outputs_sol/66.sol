pragma solidity ^0.8.0;
contract MyCallsFallbackFunction {
    uint256 [3] data;
    function setData(uint y) public { data = [y, x, x + y]; }
    uint256 x;
    fallback() external payable { x = 1; }
    receive() external payable { x++; }
}
