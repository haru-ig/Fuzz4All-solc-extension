pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint _num;
  mapping(address => uint) _balance;
  event SomeEvent(uint value);

  constructor(uint _num) {
    _num = _num;
  }

  fallback() payable {
    _num = (value * value) / 2;
    emit SomeEvent(_num);
  }

  function getCount() public view returns (uint) {
    return _num;
  }

  function getBalance(address _addr) public view returns (uint) {
    return _balance[_addr];
  }
}
