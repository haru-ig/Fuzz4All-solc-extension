pragma solidity ^0.8.0;
contract emulator5 {
  uint z; uint x;
  function test() public returns(uint) { (x, z) = (100000000000000000000, 100000000000000000000); uint res = 0; for (uint i = 100; i < 4010; i++) {uint t_x = asm("mload(16 * x)"); uint t_z = asm("x * mload(16 * z)"); (res, t_x, t_z) = (res + 1, t_x, t_z); x = t_x - 1; z = t_x * x;}(t_x, t_z) = (t_x + 1, t_z * t_x); return res;}
}
