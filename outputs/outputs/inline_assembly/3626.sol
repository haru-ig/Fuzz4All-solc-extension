pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemantics_v2 {
  modifier onlyA {
    require(msg.sender == a, "Not allowed");
    _;
  }

  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  address public a_address;
  uint public g;
  uint public r;
  constructor() {
    r = 1;
    d = address(b);
    a_address = a;
    g = 2;
    a = address(b);
    a = address(c);
    a = a;
    a = a;
    a = a;
    a = address(c);
    d = address(a4);
    a = address(b);
    b = c;
    b = d;
    b = a;
    b = e;
    g = 3;
    c = c;
  }

  function a4() public {
    a4 = address(a);
  }

  address public a4;
}
