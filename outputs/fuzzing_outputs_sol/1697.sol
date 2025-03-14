pragma solidity ^0.8.0;
contract Caller
{
	function CallSender(address caller, address payable recipient, uint256 amount) public payable {


	  require(msg.value == 0, "Value must be 0");

	  recipient.transfer(amount);




	}
}

pragma solidity ^0.8.0;
contract CallSender {
  bytes32 constant ETHER = '0xa9059cbb';
  address payable recipient;
  address payable sender;
  constructor () {
    recipient = msg.sender;
    sender = payable(this);
  }

  function CallSenderCaller(address caller) public {
    CallSender(caller, recipient, 0);
  }
  function CallSenderEther() public payable {
    CallSender(msg.sender, msg.sender, msg.value);
  }
}
