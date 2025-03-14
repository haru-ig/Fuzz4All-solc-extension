pragma solidity ^0.8.0;
contract C41_bug473749734773 {
  mapping(uint88 => uint88) f;
  uint88 b = 0x21;
  function set() public {
    f[uint88(uint88(uint(uint8(b))))] = 0xfffffffffc; uint88 c; uint88 d; uint160 e; c = uint88(uint(uint8(c))); d = uint88(uint8(uint8(c))) + uint88(0x4);
    f[uint88(uint88(uint(uint8(d))))] = 0xfffffffffc; uint88 f; uint88 g; uint160 k; f = uint88(uint(uint8(f))); g = uint88(uint8(uint8(f))) + uint88(0x4);
    uint88 x = 0x50000000; uint88 y = 0x70000000;  uint88 z = (x + y) + y;
    x = 0x5fffffff01; uint88 t = f[uint88(uint88(uint(uint8(x))))];
    z =  uint88(uint88(uint(uint8(z)))) + uint88(0x4); t = f[uint88(uint88(uint(uint8(z))))];  uint88 d = 0x12; uint88 a = y;  uint88 c = f[uint88(uint88(uint(uint88(d))))];  uint88 h = b^f[uint88(uint88(uint(uint88(d))))];
  }
}
