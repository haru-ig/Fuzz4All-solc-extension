pragma solidity ^0.8.0;
contract Bad2 {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
  function pay() payable { _val1 = 0x20fe20fe; _val2 = 0x10fe10fe; }
  function _receivePayment(uint _from, uint256 _amount) public {
    a += _amount;
    if (a == _val2 + _val1 + 10) {
    }
  }
}
