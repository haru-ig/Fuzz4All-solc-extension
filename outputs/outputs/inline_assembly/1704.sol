pragma solidity ^0.8.0;
contract MutatorS9 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 c = ONE;
  modifier always(uint i) { emit mutatorS9Changed(now, i); _; }
  function mutate() public returns(uint256 a)
  always(ONE)
  {
    c++;
    a = ONE_PLUS;

    c++;

  }
  event mutatorS9Changed (uint timestamp, uint i);
}
