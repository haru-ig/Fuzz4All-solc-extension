pragma solidity ^0.8.0;
contract G {
  address[] public p;
  function g() public {
    p.push(address(0));
    p[1]=address(0);
  }
}
