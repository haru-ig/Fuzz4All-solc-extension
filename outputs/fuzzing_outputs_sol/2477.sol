pragma solidity ^0.8.0;
contract Caller {
  fallback function() { return 11; }
}
contract Bad {
  function pay(address _to) public {
    uint x;
    uint y;
    uint16 _val1;
    uint16 _val2;
    constructor() {
      x = 10;
      y = 20;
      _val1 = 0x20fe20fe;
      _val2 = 0x10fe10fe;
    }
    function _receivePayment(uint _from, uint256 _amount) public {
      x = uint(0x10fe10fe10fe);
      y = uint(0x10fe10fe10fe);
    }
  }
}
