pragma solidity ^0.8.0;
contract c {
  uint8 internal s1;
  uint8 internal s2;
  uint8 internal s3;
  function f() public { s2 = 3; }
  constructor() public { f(); }
}

pragma solidity ^0.8.2;
contract c {
  function f() public { s2 = 3; }
  constructor() public { f(); }
}
