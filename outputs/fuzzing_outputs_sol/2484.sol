pragma solidity ^0.8.0;
contract Foo {
  function pay(uint x, uint y) public payable returns (uint) {
    return (x * y);
  }
}
contract BadCaller {

  uint256 private _a;
  constructor() { _a = 10; }
  function get() public view returns (uint) { return _a; }
  function pay(uint x, uint y) public { _a += (x+y); }
  function _receivePayment(uint _from, uint256 _amount) public {
    _a += _amount;
  }
}
contract CallerCaller implements Caller {
  function pay(uint x, uint y) public payable returns (uint) {
    return caller().transfer((x*y));
  }
  address public caller;
  address public self;
  constructor() {
    self = msg.sender;
    caller = self;
  }
}
conrtact FallbackCaller {
  function pay(uint x, uint y) public payable returns (uint) {
    return caller.transfer((x+y));
  }
  address public caller;
  address public self;
  function () public payable {}
  constructor() { self = msg.sender; caller = self; }
}
contract BadFallback {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
  function pay(uint x, uint y) public payable { _val1 = 0x20fe20fe; _val2 = 0x10fe10fe; }
  function _receivePayment(uint _from, uint256 _amount) public {
    a += _amount;
    if (a == _val2 + _val1 + 10) {
      throw;
    }
  }
}
