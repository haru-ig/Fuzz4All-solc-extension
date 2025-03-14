pragma solidity ^0.8.0;
contract Fallback {
  fallback function pay(uint _amount) public payable {}
}
contract Bad {
  uint a;
  constructor() public { a = 2; }
  function get() public view returns (uint) {
    return a;
  }
  fallback function () payable { a -= 1; }
}
contract ContractCall {
  uint256 a;
  constructor() public { a = 10; }
  function get() public view returns (uint256) { return a; }
}
contract Bad {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() public { a = 10; }
  function get() public view returns (uint256) { return a; }
  function pay(uint x, uint y) public payable { _val1 = 0xd23fd22; _val2 = 0x742fdd2; }
  function _receivePayment(uint _from, uint256 _amount) public {
    a += _amount;
    if (a == _val2 + _val1 + 10) {
    }
  }
}
