pragma solidity ^0.8.0;

  address payable owner;
  uint256 public balance;
  function buy(uint256 amount) public {
    ownable = msg.sender;
    balance = amount;
  }
  function buyFrom(address from, uint256 amount) public payable {
    require((from == msg.sender) || (msg.value >= amount), "Not allowed");
    require(amount > 0, "Amount should be positive");
    ownable = from;
    balance += amount;
  }
  modifier onlyOwner {
    require(msg.sender == owner, "Only owner");
    _;
  }
  function() payable onlyOwner {
    owner.transfer(msg.value);
  }
}
