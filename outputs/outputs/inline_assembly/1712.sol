pragma solidity ^0.8.0;
contract MutatorS11 {
uint8 constant ZERO = 0;
uint8 constant ONE = 1;
uint256 c = ZERO;
  function mutate() public {
    c += ONE;
  }
}
contract Mutator {
  uint256[2] public values;
  function mutate() public {
    values[0] *= ONE;
  }

  function printValues() public view returns (uint256) {
    return values[0];
  }

}
