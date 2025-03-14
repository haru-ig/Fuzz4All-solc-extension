pragma solidity ^0.8.0;
contract DontCall {
  uint256 a;
  constructor() { a = 12; }
  function get() public view returns (uint256) { return a; }
  fallback();
  receive(){ }
  receive () payable payable {
  }
  receive () payable payable receive(){ }
  receive () receive(uint i) {
  }
  receive () payable { }
  receive() payable receive(uint) payable { }
  receive() payable payable { }
  receive() receive() { }
}
