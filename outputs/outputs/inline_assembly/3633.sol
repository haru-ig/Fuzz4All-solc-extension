pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  address public a_address;
  uint public g;
  uint public r;
  constructor() {
    r = 3;
    d = address(b);
    b = address(b);
    a_address = a;
    g = 4;
    a = address(a);
    a = address(b);
    a = address(c);
    a = address(a);
  }
}
