pragma solidity ^0.8.0;
contract Mutated {
    uint public constant multiplier = 2;
    function multiply(uint x, uint y) public pure returns (uint) {
      return uint(x * multiplier + y / multiplier);
    }
}
