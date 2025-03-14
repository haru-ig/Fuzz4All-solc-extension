pragma solidity ^0.8.0;
contract c {
  uint32 [] s;
  function f() public {
    uint i;
    uint32 s_i;
    for(i=0; s.length!= 0; ++i) {
      s[i] = s.length / 2;
      s_i = s[i];
      s[i+1] = s[i];
    }
  }
}

pragma solidity ^0.8.0;
contract c {
  uint32 [] memory s;
  function f() public {
    uint32 i;
    uint32 s_i;
    for(i=0; s.length!= 0; ++i) {
      s[i] /= 2;
      s_i = s[i];
      s.push(s[i]);
    }
  }
}
