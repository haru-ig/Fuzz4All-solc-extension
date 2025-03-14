pragma solidity ^0.8.0;
contract G {
  address[] public p;
  constructor() public {
    p.push(address(0));
    p[1]=address(0);
  }
  function g() public {
    p.push(p[0]);
    p[1]=address(p[0]);
  }
}
