pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  address public a;
  bool public isModded;
  uint public g;
  uint public r;
  constructor() {
    r = 3;
    a = e;
    d = a_address;
    b = a;
    a_address = a;
    g = 4;
    a = address(a);
    a = address(b);
    a = address(c);
    a = a;
  }
  function getAddress1() public view returns (address) {
    return a;
  }
  function isModded_before() public view returns (uint) {
    return g;
  }
  function isModded_after() public returns (uint) {
    return g;
  }
  modifier modded {
    isModded = true;
    _;
    isModded = false;
  }
  function squash() public isModded {
    a_address = a;
    a_address = a;
    a_address = a;
    a_address = a;
    return;
  }
}
