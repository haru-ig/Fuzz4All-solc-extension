pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  uint8 s_i;
  function f() public {
    uint32 i;
    uint8 s_i;
    for(i=0; s.length!= 0; ++i) {
      s_i = s[i];
      s.push(s[i]);
      s[i] = s_i;
    }
    s[i] /= 2;
  }
}

pragma solidity ^0.8.0;
contract c {
  constructor(uint8 [] memory s_) public  {
    uint32 i;
    uint8 s_i;
    for(i=0; s.length; ++i) {
      s[i] = s_[i];
    }
  }
}
