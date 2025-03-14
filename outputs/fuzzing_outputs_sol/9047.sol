pragma solidity ^0.8.0;
contract Caller {
  mapping(uint256 => uint256) public balances;

  address private contract_;

  constructor(address user, address contractAddress, uint256 value) public {
    uint256 balanceBefore = msg.value;
    contract_ = contractAddress;
    balances[user] = balanceBefore;
  }

  receive() external payable {}

  function fallback(uint256 amount) public payable {
    uint256 balanceAfter = balances[msg.sender];
    require(msg.value == (amount + balanceAfter), "Caller: Wrong amount");
    balances[msg.sender] += amount;
    emit Fallback(msg.sender, amount, balanceAfter);
    contract_.call{value: balanceAfter}("");
  }
}
