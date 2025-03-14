pragma solidity ^0.8.0;
contract E6G {
  uint32 r = 0xffffffff;
  uint32 b = 0xffffffff;
  uint32 b2 = 0xff0;
  uint32 b3 = 0x1ffff;
  uint32 r2 = r - b3;

  function mutatedGen() public {
    b3 = 0xffff;
    r2 = 0x1fff;
    b3 = 0x0;
    r2 = 1;
    b = 0xffff;
    r = 1;
    r2 = r2 - b;
    b2 = r2 - b2;
    x = r2 - b2;
    b3 = r2 - b3;
  }
}
