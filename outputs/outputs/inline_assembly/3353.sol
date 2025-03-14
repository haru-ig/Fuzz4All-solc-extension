pragma solidity ^0.8.0;
interface I { address f(); }
contract CallMutablility {
  mapping (address => bool) public known;
  mapping (address => bool) public notKnown yet;
  I public i_;
  uint public a;
  uint public b;
  constructor (uint _a, uint _b) {
    a = _a;
    b = _b;
    known[msg.sender] = false;
    notKnown[i_.f()] = false;
  }
}
