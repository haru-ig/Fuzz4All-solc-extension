pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithoutSemantics{
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
  function changeAddress(address newAddress, uint old) public{
    d =  address(newAddress);
    e = a;
    a_address = d;
    a =  address(a);
    a =  address(b);
    a = a;
  }
  function getAddress1() public view returns (address) {
    return a;
  }
}
