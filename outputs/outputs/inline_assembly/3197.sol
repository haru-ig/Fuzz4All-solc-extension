pragma solidity ^0.8.0;
contract Mutated {
  address public x;
  uint internal _value;
  constructor() {
    _value = 0xf05fc;
  }
  function x() public view returns (uint) {
    return _value;
  }
  function update() public {
    _value = 0xf05fc;
  }
}

mutated_sol_0.6.sol:5:28: Warning: Inline assembly can be used up to 10000000000 gas.
uint internal _value;
                   ^
