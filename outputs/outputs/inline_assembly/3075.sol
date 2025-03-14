pragma solidity ^0.8.0;
contract C {
  uint public a;
  uint public b;
  uint public c;
  constructor(uint _a, uint _b) public {
    a = uint(_a);
    b = uint(_b);
    a = a+(b+c)/2;
    b=-b+3*a;
    c=a-b;
  }
}
