pragma solidity ^0.8.0;
contract Convert_8 {
    uint256 p = 100;
    function toB(uint256 a, uint256 x, uint256 o) public pure returns (uint64)
    { a*x*o/p;}
    function fromB(uint256 a, uint256 x, uint256 o) public pure returns (uint256)
    {a/x/o*p;}
    }
