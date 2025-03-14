pragma solidity ^0.8.0;
contract Mutator {
  function mutate() public payable returns (uint256 x) {
    x = 5;
    fallback();
    return x;
  }
}
