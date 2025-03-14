pragma solidity ^0.8.0;
interface Caller {
    function get() external pure returns (uint);
    function fallback(uint x) external payable;
}
