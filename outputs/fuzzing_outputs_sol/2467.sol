pragma solidity ^0.8.0;
contract Caller {
  function pay() public payable returns (address) {
    return(address(this));
  }
}
contract ContractCall {
  uint256 a;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
}
contract Bad {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
  function pay() public payable { _val1 = 0x20fe20fe; _val2 = 0x10fe10fe; }
  function _call(uint value) public view { a += value; }
  function _receivePayment(uint _from, uint256 _amount) public {
    uint _transferedValue = a - _val1 - _val2;
    a += _val2 + _transferedValue + 10;
  }
}
