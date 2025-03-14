pragma solidity ^0.8.0;
contract MutatingFallback10 {
  uint64 a;
  uint64 x;

  struct F {
    bool x;
    uint8 y;
    uint32 z;
  }

  constructor(uint64 _x) {
    x = _x;
  }

  modifier onlyFallback {
    F memory f;
    f.x = true;
    f.y = 70;
    x += (a += 10);
    x *= (a += 2);
    x = x + x;
    x *= (a += 8);
    x = x - x * (a += 1);
    x += x / a;
    x *= x < (x += 1);
    uint256 y;
    uint32 z;

    y = (a += 1) + (a *= 2) + (a += 4) - (a -= (z = uint32(a) + 1 << 15));
    y = (y - z + 6) / a + (z <= (x >>= (a -= 2) == 0? 5 : 3)) * (a += 4) + (a += 31);
    y = y + x * (a += 10);
    y += x * (a += a);

    x = x * y + x * (x == z? (a += 7) + x : a * (a += 4));
    x = a * (a += 4) - x * a - (a += 3) * x + (a += (x < z? 4 : (a = 9))) == 5;
    x = (x = a) + x * a - (a += 8);
    x = (y = a) + y * a;
    x *= (a += 5) + x * a + (x = z);
    x = (x *= (a += 5) * (x += 3) = 12 * x += 7) + (x = a *= 0xcdfabea2);
    x *= x / (18 + (17 + x + x + (a += (0x1a0 <= x)) * x) / (x -= (a = (x += 12) == x << 12? 9 : (a += 4)) <= 1? 0 : a * (19 + 0xf0 * ((a += 5)) / (0xf + (a *= (0x12 <= 0x12 * 0x80 << 1? 1 : 0) * x *= a <= 1? 8 : 0) >> 6)));
    x = (x ==
