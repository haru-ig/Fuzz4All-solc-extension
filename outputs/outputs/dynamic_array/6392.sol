pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  function f() public {
    uint32 i;
    uint8 s_i;
    uint8 _i;
    uint8 size_ = s.length;
    for (i = 0; i < size_; i = i + 1) {
      _i = s[i];
      s_i = s[i];
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
    }
  }
}
