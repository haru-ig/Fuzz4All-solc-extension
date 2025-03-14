pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  address public b;
  address public c;
  uint public g;
  uint public r;
  constructor() {
    a = address(b);
    a = address(c);
    b = address(a);
    c = address(b);
    d = address(c);
    a_address = address(0);
    g = 4;
    r = 3;
    g = g;
    g = g;
    g = g;
    g = g;
    g = g;
    g = g;
    r = r;
  }
}
