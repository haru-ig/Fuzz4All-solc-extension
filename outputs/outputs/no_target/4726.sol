pragma solidity ^0.8.0;
contract C {
  struct S {
   uint1 u;
  address a;
  }
  mapping (address => S[] ) m;
}
