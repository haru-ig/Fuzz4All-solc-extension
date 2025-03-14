pragma solidity ^0.8.0;
contract Mutator {
  function fallback(string memory _data) public payable { revert(); }
}
