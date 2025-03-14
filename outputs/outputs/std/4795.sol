pragma solidity ^0.8.0;
contract G {
  uint256[] public p;
  constructor() public {
    p.push(0);
    p[1]=1;
  }
  function g() public {
    for(uint8 i=0;i<2;i++) {
      p.push(p[0]*2);
    }
    p[0]=10;
    p[1]=20;
    p.push(15 * p[0]);
    p.push(25);
    p[2]=p[0] % 3;
    p.push(blockhash(8)).length;
    p.push(now);
    p.push(0x00000000000000000000000000000000000000);
  }
}
