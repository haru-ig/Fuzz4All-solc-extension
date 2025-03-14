pragma solidity ^0.8.0;
contract MutationEquivalence60
{
  function add(uint x, uint y) public pure returns (uint) {
    require(y > 0, "y must be positive");
    uint _x = x + y;
    assembly {
      const := add(_x, y)
    }
  }
}
