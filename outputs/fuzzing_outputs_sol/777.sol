pragma solidity ^0.8.0;
contract FallbackReceiverExample {
  event Success(uint256 total);

  uint256 public balance;
  mapping (address => uint256) public amount;
  uint256 public total;

  constructor () {
    balance = 100000000000000000;
    total = 0;
  }

  function modify() public payable view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
    }
    total = balance + amount[msg.sender];
    require(balance >= total, 'Balance should be greater than amount');
  }

  function () public payable {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
    }
    total = balance + amount[msg.sender];
    require(balance >= total, 'Balance should be greater than amount');
    amount[msg.sender]+=1;
  }
	function receive() public payable {
		amount[msg.sender]+=1;
	}
}
