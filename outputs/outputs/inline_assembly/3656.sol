pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemantics{
  address public a;
  address public b;
  address public c;
  address public a_address;
  uint public r;
  uint public g;
  mapping(uint => address) public e;
  constructor() {

      a = e[0];

      a_address = a;
      r = 3;
      g = 4;
      r = 4;
      a =  a;
      a = b;
      a = c;

    a_address = a;
    a =  address(a);
    a =  address(b);
    a = a;
  }
  function changeAddress(address newAddress, uint old) public{
    d =  address(newAddress);
    e[old] = d;
    e[1];
    d =  address(d);
    d =  address(a_address);
    d = d;
    a =  address(a);
    a =  address(b);
    a = a;
  }
  function getAddress3() public view returns (address) {
    return a;
  }
}
