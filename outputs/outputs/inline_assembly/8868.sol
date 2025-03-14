pragma solidity ^0.8.0;
contract Test
{
  struct Point
  {
    uint x;
    uint y;
  }

  uint z = 1;
  Point point;

  function test() public {
    point.x /= z;
    point.y /= z;
    point.x *= z;
    point.y %= z;
    point.y <<= z;
    point.x <<= z;
    point.x >>= z;
  }
}
```
