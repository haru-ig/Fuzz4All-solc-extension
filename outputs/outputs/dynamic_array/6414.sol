pragma solidity ^0.8.0;
contract c {
  uint8[] memory s;
  function f() public {
    uint32 i;
    uint8 s_i;
    for(i=0; s.length > 0; i += 1) {
      s_i = s[i];
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
    }
  }
}




pragma solidity ^0.8.0;

contract c {
    constructor() public {
        c[] memory cs;
        cs.length = 1;
        assert(cs.length == 1);
    }
}
