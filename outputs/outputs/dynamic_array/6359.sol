pragma solidity ^0.8.0;
contract c {
  uint8 s5;
  uint8 s6;
  constructor() { s5 = 5; s6 = 6; }
  function f() public { s5 = s6 = 8; s5 = s6 = 10; }
}

pragma solidity ^0.8.0;
contract c {
  uint8 s7;
  uint8 s8;
  constructor() { s7 = 7; s8 = 8; }
  function f() public { s7 = s8 = 9; s7 = s8 = 10; }
}
