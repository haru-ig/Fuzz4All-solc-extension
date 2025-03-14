pragma solidity ^0.8.0;
contract Interface
{
    function sum() external pure returns (uint);
    function product() external pure returns (uint);
    function foo(address y) external pure returns (uint);
    function getUints() external pure returns (uint[3] memory);
}
