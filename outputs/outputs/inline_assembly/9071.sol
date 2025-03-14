pragma solidity ^0.8.0;
interface I
{
    constructor () public;
    function add(uint) external ;
    function div(uint) external;
    function mul(uint) external;
}
library Lib
{
    function add(uint a, uint b) public returns (uint) {
        return (a + b);
    }
    function pow(uint a, uint b) public returns (uint) {
        return (a ** b);
    }
    function div(uint a, uint b) public returns (uint) {
        return (a / b);
    }
    function mul(uint a, uint b) public returns (uint) {
        return (a * b);
    }
}
