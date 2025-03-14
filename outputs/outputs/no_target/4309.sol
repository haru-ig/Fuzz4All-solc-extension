pragma solidity ^0.8.0;
contract K {
  struct I { uint a; }
  constructor(address b) public {
    I memory i;
  }
  function f(I callmemory a) public {
    uint b ;
    uint c ;
    I callmemory i = a;
    I memory i1;
  }
  function f(address a, address b) public {
    uint c ;
    I memory i = I({a:100});
    I memory i1;
  }
}
