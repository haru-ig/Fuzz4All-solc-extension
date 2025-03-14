pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemantics{
  address public a;
  address public b;
  address public c;
  address public e;
  uint public g;
  uint public r;
  constructor() {
    r = 3;
    a = address(e);
    c = e;
    g = 4;
    a = e;
    a = address(a);
    a = address(b);
    a = address(c);
    a = address(a);
  }
  function changeAddress(address newAddress, uint old) public{
    d = newAddress;
    e = a;
    a = d;
    e =address(a);
    a =  address(a);
    a =  address(b);
    a = a;
  }
  function getAddress1() public view returns (address) {
    return a;
  }
}
