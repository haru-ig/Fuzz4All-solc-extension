pragma solidity ^0.8.0;
contract Mutator {
  function execute() public payable { revert(); }
  function revoke() public { revert(); }
}
