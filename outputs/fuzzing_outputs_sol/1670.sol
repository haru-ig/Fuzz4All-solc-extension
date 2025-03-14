pragma solidity ^0.8.0;
contract Fallback {
  receive() external payable {

    msg.sender.transfer(address(this).balance);
  }
}


pragma solidity ^0.8.0;
contract FallbackImpl {
  constructor () {
  }
  function() external payable {

    msg.sender.transfer(address(5));
  }
  receive() external payable {
  }
  fallback() external payable {
  }
}
contract Fallback3 {
  receive() external payable {

  }
  fallback() external payable {
    msg.sender.transfer(address(this).balance);
  }
}
