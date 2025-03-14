pragma solidity ^0.8.0;
contract Delegate {
  function transfer(address receiver, uint256 amount) public {
    receiver.transfer(amount);
  }
}
