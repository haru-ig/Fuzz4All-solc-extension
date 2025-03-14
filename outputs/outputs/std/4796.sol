pragma solidity ^0.8.0;
contract H {
  address[] public p;
  constructor() public {
    p.push(address(0));
    p[2]=address(0);
  }
  function h() public {
    p.push(p[0]);
    p[2]=address(p[0]);
    p[3]=address(p[1]);
    p[4]=address(p[2]);
  }
}
