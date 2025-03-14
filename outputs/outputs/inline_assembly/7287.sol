pragma solidity ^0.8.0;
contract Solidity {
  uint8 j;
  event Log(uint _index, address _who, uint _amount);
  contract C {
    function C() {
      j = 1;
    }
  }
  Address payable public payee;
  constructor() {
    payee = payable(msg.sender);
  }
  fallback() external {
    messageFallback();
  }
  function messageFallback() public {
    emit Log(msg.value, payee, msg.value);
  }
  function() public {
    messageFallback();
  }
}
