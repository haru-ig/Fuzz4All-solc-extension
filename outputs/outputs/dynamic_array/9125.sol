pragma solidity ^0.8.0;
contract Simple {


  constructor (
      address _owner
  ) public {
    owner = _owner;
  }

  mapping (address => uint256) balances;
  address payable owner;

  modifier restricted() {
    require(isOwnerValid());
    _;
  }

  function isOwnerValid() public view returns (bool) {
    require(msg.sender == owner);
    return true;
  }

  function withdraw(address _recipient, uint256 amount) public restricted {
    if (!canWithdraw_) throw;

    balances[_recipient] -= amount;
    _recipient.transfer(amount);
  }

  bool canWithdraw_ = true;
}
