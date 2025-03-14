pragma solidity ^0.8.0;
contract G {
  int[] public p;
  function g() public {
    p[1]=3;
    p.push(1);
  }
}
