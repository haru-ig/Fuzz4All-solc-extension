pragma solidity ^0.8.0;
contract Caller is MutatorExample {
  receive() external pure { revert(); }
}
