pragma solidity ^0.8.0;
contract S4 {
  uint internal constant s4_internal = 0x49e1b150399c2a41;
  uint public s4;
  function h(uint x) internal returns (uint) { return s4 = s4_internal; }
}

pragma solidity ^0.8.0;
contract S5 {
  uint internal constant s5_internal = 0x8a066e2edefb8a96;
  uint public s5;
  function h() internal returns (uint) { return s5; }
  function set(uint x) internal returns (uint) { return s5 = x; }
}

pragma solidity ^0.8.0;
contract S6 {
  struct S6data { uint internal a; uint internal b; }
  function h(S6data s6dat) internal returns (uint) { return s6dat.a = s6dat.a + s6dat.b; }
}

pragma solidity ^0.8.0;
contract S7 {
  uint internal constant s7_internal = 0x47dc715a92c11ec2;
  uint public s7;
  function h() internal returns (uint) { return s7; }
  function set(uint x) internal returns (uint) { return s7 = x; }
  function changereturn(uint p) internal returns (uint) { return p + s7; }
}

pragma solidity ^0.8.0;
contract S8 {
  uint internal constant s8_internal = 0xb696ab40c849c78a;
  uint public s8;
  function h(uint x, uint y, uint z) internal returns (uint) { return s8 = s8_internal; }
}

pragma solidity ^0.8.0;
contract S9 {
  uint internal constant s9_internal = 0x665e481b7161f65e;
  uint public s9;
  function h(uint x) internal returns (uint) { return s9 = s9_internal; }
  function set(uint x) internal returns (uint) { return s9 = x; }
  function set2(uint x, uint y) internal { s9 = x; }
}
/* Please create a mutated program that adds a member
