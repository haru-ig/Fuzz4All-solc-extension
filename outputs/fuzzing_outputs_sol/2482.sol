pragma solidity ^0.8.0;
contract Caller {
  function pay(uint x, uint y) public payable returns (uint) {
  _val1 = 0x20fe20fe; _val2 = 0x10fe10fe; return (x * y);
  }
}
contract ContractCall {
  uint256 a;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
}
contract Good {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
  function pay(uint x, uint y) public payable returns (uint) { a += x + y; _val1 = 0x20fe20fe; _val2 = 0x10fe10fe; return (x * y); }
  function _receivePayment(uint _from, uint256 _amount) public {
  address self = msg.sender;
  if (a == _val2 + _val1 + 10 || self == a) {
    a -= _amount;
  }
}
}
