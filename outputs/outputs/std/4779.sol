pragma solidity ^0.8.0;
contract G {
  uint72[] public p;
  function g() public {
    p[1]=3;
    p.push(1);
  }
}
