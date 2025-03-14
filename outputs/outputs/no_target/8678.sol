pragma solidity ^0.8.0;
contract ChangedABIv5
{
    function f0(uint256 x) public pure returns (uint256) { require(x > 0, "cannot divide by zero"); return x + 100; }
    function f1(uint256 x) public pure returns (uint256) { return x; }
    function f2(uint256 t, uint y) public pure returns (uint256) { return t / (((x > 0)? x : y) + 1); }
}
