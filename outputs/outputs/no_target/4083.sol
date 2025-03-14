pragma solidity ^0.8.0;
contract S4 {
  uint internal constant s4_internal = 0xfad510000;
  uint public s4;
  function h(uint x) internal returns (uint) { return s4 = s4_internal; }
}

pragma solidity ^0.8.0;
contract S5 {
  uint internal constant s5_internal = 0xfad510000;
  uint public s5;
  function h(uint x) internal returns (uint) { return s5 = s5_internal; }
}
contract S6 is S1, S2 {}

pragma solidity ^0.8.0;
contract S7 {
  uint internal constant s7_internal = 0xfad510000;
  uint public s7;
  function h(uint x) internal returns (uint) { return s7 = s7_internal; }
}
contract S8 {
  uint internal constant s8_internal = 0xfad510000;
  uint public s8;
  function h(uint x) internal returns (uint) { return s8 = s8_internal; }
}
contract S9 is S3, S4, S7 {}

pragma solidity ^0.8.0;
contract S10 {
  uint internal constant s10_internal = 0xfad510000;
  uint public s10;
  function h(uint x) internal returns (uint) { return s10 = s10_internal; }
}
contract S11 is S5 {
  function h(uint x) internal returns (uint) { return s10 = s10_internal; }
}
contract S12 is S6, S8 {}

pragma solidity ^0.8.0;
contract S13 {
  uint internal constant s13_internal = 0xfad510000;
  uint public s13;
  function h(uint x) internal returns (uint) { return s13 = s13_internal; }
}
contract S14 is S5, S7, S9 {}
contract S15 is S6, S10, S12, S14 {}
contract S16 {
  uint public s16;
  function h(uint x) internal returns (uint) { return s16 = s16 + 1; }
}
contract S17 {
  uint internal constant s17_internal = 0xfad51
