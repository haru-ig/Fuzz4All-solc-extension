pragma solidity ^0.8.0;
interface I
{
    function add(uint) external pure returns (uint);
    function sub(uint) external pure returns (uint);
}
library Lib
{
    function add(uint a, uint b) public pure returns(uint) {
        return (a + b);
    }
    function sub(uint a, uint b) public pure returns (uint) {
        return (a - b);
    }
}
