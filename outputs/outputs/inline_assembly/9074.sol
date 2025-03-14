pragma solidity ^0.8.0;
contract C
{
    function multiply(uint a, uint b) external pure returns (uint) {
        return (Lib.mul(a, b));
    }
    function divide(uint a, uint b) public pure returns (uint) {
        return (Lib.div(a, b));
    }
}
