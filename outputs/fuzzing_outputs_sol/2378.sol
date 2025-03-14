pragma solidity ^0.8.0;
contract CallerPay {
  receive () external payable {}
  function callWithEther() external payable {}
}


pragma solidity ^0.8.0;
contract CallerPay {
  receive () external payable {
    msg.sender.transfer(msg.value);
  }
  receive () external payable {
    msg.sender.transfer(msg.value);
  }
}
