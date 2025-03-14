pragma solidity ^0.8.0;
contract Receiver {
  function receive() public payable { revert(); }
}
