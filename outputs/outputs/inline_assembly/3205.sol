pragma solidity ^0.8.0;
contract Contract {
  uint internal _value;
  address public owner;
  mapping(address => uint) public _amounts;
  event NewAmountsAmount(address indexed account, uint amount);
  constructor() {
    owner = msg.sender;
    _value = 0x2;
    _amounts[msg.sender].id;
  }
  function getAddress(address account) public view returns (uint) {
    return _amounts[account].id;
  }
  function updateAddress(address account, uint amount) public returns (uint) {
    require(msg.sender == owner, "incorrect sender");
    _amounts[account].id;
    emit NewAmountsAmount(account, amount);
    return 20;
  }
}

contract Contract {
  uint internal _value;
  address public owner;
  mapping(address => uint) public _addresses;
  IToken public A;
  IToken public B;
  constructor() public {
    owner = msg.sender;
    _value = 0x2;
    _addresses[msg.sender].id;
  }
  function getAddress(address account) public view returns (uint) {
    IToken memory IToken = IToken(A);
    uint amount = _addresses[account].id;
    amount * uint(1);
    IToken.safeSub(uint(1), uint(1));
    return amount;
  }
  function updateAddress(address account, uint amount) public returns (uint) {
    require(msg.sender == owner, "incorrect sender");
    _addresses[account].id;
    emit NewAmountsAmount(account, amount);
    return 20;
  }
}
