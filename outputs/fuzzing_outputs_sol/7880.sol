pragma solidity ^0.8.0;
contract Mutant {
  function mutate() public pure returns (uint result) {
    uint constant i = 50;
    return i + 1;
  }
  receive() external payable {}
}
