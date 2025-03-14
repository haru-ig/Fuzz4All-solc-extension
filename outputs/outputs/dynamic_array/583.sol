pragma solidity ^0.8.0;
contract test33 {
  struct foo{uint a;}
  foo x1;
  foo x2;
  foo x3;
  uint a;
  constructor (uint a_) {
  x1.a=a_;
  x2.a=a_;
  x3.a=a_;
  }






  constructor(uint a_) public {
  x1.a=a_;
  a=a_;
  }
}
