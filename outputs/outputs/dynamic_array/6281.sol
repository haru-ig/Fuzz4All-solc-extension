pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
    uint b;
  }
  s memory init = l.get();
  address addr1 = address(0x7FFFFFFF);
  address addr2 = addr1;
  function get() public pure returns (uint z) {
     s memory a;
     a.a = 1;
     a.b = 2;
     return Init.a + Init.b;
  }
}


contract C {
  s memory Init;
  constructor() {}
  function foo() public pure {
    s memory a = l.l.get();
    Init.a = 1;
    Init.b = 2;
    l.l.get();
    Init.a = 0;
    Init.b = 0;
  }
}
}
}
