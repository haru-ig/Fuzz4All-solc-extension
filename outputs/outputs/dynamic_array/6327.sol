pragma solidity ^0.8.0;

contract d {
  uint f;
  uint8 g;

  constructor() public { g = 1; }

  function e() public view { f = 0; g = 0; }
}

pragma solidity ^0.8.0;

contract array_of_nested_storage {
  uint8 s;
  uint16 s2;
  uint32 s3;
  uint32 s4;
  uint32 s5;
  uint256 s1;

  constructor() public {
    s = 1;
    s2 = 2;
    s3 = 65535;
    s4 = -65536;
    s5 = -16777216;
    s1 = 16777213;
  }
}
