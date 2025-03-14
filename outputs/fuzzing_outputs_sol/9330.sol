pragma solidity ^0.8.0;
contract Caller {
  address payable contractAddress;

  function modify() public {
    contractAddress.transfer(msg.value);
    require(true, "Message was not sent to a Payable fallback.");
  }

  receive() external payable {
    contractAddress.transfer(msg.value);
  }
}
