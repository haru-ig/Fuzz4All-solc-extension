pragma solidity ^0.8.0;
contract G {
  address[] public p;
  function g() public {
    p.push(address(0));
    address payable a = address(0x111);
    p[1] = a;
    p[0] = a;
    p.push(address(0));
    p[2] = p[0];
  }
}
