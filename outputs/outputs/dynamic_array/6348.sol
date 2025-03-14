pragma solidity ^0.8.0;
contract c {
  uint8 s1;
  uint8 s2;
  function f() public { s1 = 3; s2 = 3; }
}

pragma solidity ^0.8.0;
contract c {
  uint8 s1;
  uint8 s2;
  function f() public { s1 = 3; }
}

pragma solidity ^0.8.0;
contract c {
  uint8 s1;
  uint8 s2;
  function f() public { s2 = 3; }
}
