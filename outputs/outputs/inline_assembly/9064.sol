pragma solidity ^0.8.0;
interface I
{
    function add(uint) external pure returns (uint);
    function div(uint) external pure returns (uint);
    function mul(uint) external pure returns (uint);
}
library Lib
{
    function add(uint a, uint b) public pure returns (uint) {
        return (a + b);
    }
    function pow(uint a, uint b) public pure returns (uint) {
        return (a ** b);
    }
    function div(uint a, uint b) public pure returns (uint) {
        return (a / b);
    }
    function mul(uint a, uint b) public pure returns (uint) {
        return (a * b);
    }
}
