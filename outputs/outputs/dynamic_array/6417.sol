pragma solidity ^0.8.0;
contract {
  uint8[] public s;
  function f() public {
    uint32 i;
    uint8 s_i;
    for(i=0; length!= 0; ++i) {
      length /= 2;
      s_i = length;
      length += 1;
      s.push(s_i);
    }
  }
}
