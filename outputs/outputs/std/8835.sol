pragma solidity ^0.8.0;
contract Mutated{
    uint256 public constant value = 0;
    function f()public{
        uint256 _x; _x; _x *= this.value; _x *= 0x1234567890abcdefedcba87654321; _x *= this.value;
        uint256 _x; _x; _x /= this.value;
    }
}
