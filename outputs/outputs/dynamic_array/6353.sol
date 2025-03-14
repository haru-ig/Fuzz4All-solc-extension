pragma solidity ^0.8.0;
contract c {
  struct s { uint a; uint b; uint c; uint d; uint e; uint f;}
  struct s [10] s3;
  uint8 s4;
  function func() public { s3[1] = s({a: 5, b:40, c: 0, d: 0, e: 0, f: 0}); }
}
