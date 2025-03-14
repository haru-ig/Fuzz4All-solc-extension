pragma solidity ^0.8.0;
contract ExampleStruct12 {
    uint8 a;
    constructor(uint8 a_, uint256 b_, uint32 c_) {
      a = a_;
      b = b_;
      c = c_;
    }
    uint256 a2;
    uint256 b2;
    uint32 c;
    modifier modifA(){a2 = a; _; a = a2;
    return;
    }
    modifier modifB(){a2 = b; _; b = a2;
    return;
    }
    modifier modifC(){a2 = c; _; c = a2;
    return;
    }
}
contract ExampleStruct13 {
  uint a;
  constructor(uint a_) {
    a = a_;
  }
  uint2 a2;
  uint5 a3;
  uint5 a4;
  modifier modifA(){a2 = a; _; a = a2; return;
  }
  modifier modifA5(uint5 a){a3 = a; a2 = a3; _; a4 = a2; return;
  return;
  }
}
contract ExampleStruct14 {
  uint a;
  constructor(uint a_) {
    a = a_;
  }
  uint2 a2;
  uint32 a3;
  uint64 a4;
  modifier modifB(){a2 = a; _; a = a2; return;
  }
  modifier modifA4(uint32){a3 = a; a2 = a3; _; a4 = a2; return;
  return;
  }
  modifier modifA6(uint, uint);
}
contract ExampleStruct15 {
  uint a;
  constructor(uint a_) {
    a = a_;
  }
  uint2 a2;
  uint4 a3;
  uint6 a4;
  modifier modifB(){a2 = a; _; a = a2; return;
  }
  modifier modifA3(uint4, uint){a3 = a; _; a4 = a3; return;
  return;
  }
}
contract ExampleStruct16 {
  uint a;
  constructor() {
    a = 0;
  }
  uint2 a2;
  uint32 a3;
  mapping(uint256=>uint256) a5;
  mapping(uint256=>address) a6;
  mapping(address=>uint256) a7;
  mapping(uint32=>uint32) a8;
  uint256 a27;
  uint7 a47;
  modifier modifA27(uint);
  modifier modifA47();
  modifier modifA32(uint32, uint32);
  modifier modifA69();
  modifier modifA37(uint4);
}
