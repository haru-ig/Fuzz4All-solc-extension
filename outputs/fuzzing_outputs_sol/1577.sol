pragma solidity ^0.8.0;
contract Caller {
  function example() public returns (address) {
    return address(new MyContract());
  }
}
