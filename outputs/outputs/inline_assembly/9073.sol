pragma solidity ^0.8.0;
interface I
{
    function add(uint) external pure returns (uint);
    function pow(uint) public view returns (uint);
    function div(uint) public view returns (uint);
}
library Lib
{
    bytes32 constant valueToHash = keccak256("This must be changed to a constant to demonstrate that it can be accessed from within the scope of this method.");
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function pow(uint a, uint b) public pure returns (uint) {
        return a ** b;
    }
    function div(uint a, uint b) public pure returns (uint) {
        return a / b;
    }
}
