pragma solidity ^0.8.0;
contract P1{
  uint8 public i1;
  uint public p1;
  uint c;
  uint128 u128c = 1;
  uint s16;
  uint256 c256;

  mapping(uint=>uint) y;

  constructor(uint _i1, uint _p1, uint _c) {
    i1 = _i1;
    p1 = _p1;
    c = _c;
  }

  function set16s(uint16 _s16) {
    s16 = _s16;
  }

  function g() public view returns(uint32) {
    uint32 s256_u32 = uint32(u128c);
    uint32 s16_u32 = uint32(s16);

    c256 = c256 + _add256();
    uint32 s1918 = uint32((2**1911) >> (uint32((c - s16) >> 1)));
    return s256_u32 + s16_u32 + s1918 + _add384();
  }

  function set(uint y_) public {
    uint a;
    uint k;
    (a, k) = y_[uint(block.number)];
    p4 = i1;
  }



  function foo(uint x) public {
    uint32 s16;
    uint32 s32;
    if (true) {
      s16 = s16;
    } else {
      s16 = 1;
    }
    if (0 == (1 + 2) + (1 == 128)) {
      s16 = 0;
    } else {
      s16 = 0;
    }
    if (0 <= 1 && 1 <= 1) {
      s16 = 0;
    } else {
      s16 = 1;
    }
    if (x >= 2) {
      uint a;
      k = x + x / (1 << 2);
      if (x <= 127) {
        if (a = uint(0xFF) + 1) {
          s16 = x + k;
          x = 1;
          k = x + x / (1 << 2);
          if (uint(block.number) > 0x48439FEAAE483C89) {
            k = k + k / (1 << 2);
          } else {
            x = 0;
            k = 12;
            s32 = uint32(k >> 9);
          }
        } else {
          s16 = uint16(a);
          x = 1;
          k =
