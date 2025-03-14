pragma solidity ^0.8.0;
contract Contract {
  uint internal _value;
  address private readonly admin;
  constructor() {
    admin = msg.sender;
    _value = 10;
  }
  modifier onlyAdmin {
    require(msg.sender == admin, "incorrect sender");
    _;
  }
  function getAmount() public view returns (uint) {
    return _value;
  }
  function updateAmount(uint amount) public onlyAdmin returns (uint) {
    require(amount!= 0, "cannot update the value to zero");
    _value += amount;
    return amount;
  }
}
