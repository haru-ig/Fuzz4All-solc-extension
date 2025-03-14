pragma solidity ^0.8.0;
contract MovedFallback {
  uint amount;
  address payable receiver;


  receive () payable {}

  function () external payable {}


  function fallback (uint _amount) public {
    amount = _amount;
    receiver = msg.sender;
    selfdestruct(receiver);
  }





  fallback() external payable {
    receiver.transfer(amount);
  }
}
