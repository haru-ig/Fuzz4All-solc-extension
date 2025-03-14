pragma solidity ^0.8.0;
contract S {
  contract G {
    constructor() public{
      uint a;
      uint b;
    }
  }
  enum E {X,Y};
  struct T { uint c; }
  struct I { uint a; }
  interface I2 { uint b; }

  E f() public {
    T memory t;
    t.c = I(I2(2)).a;
  }
}
