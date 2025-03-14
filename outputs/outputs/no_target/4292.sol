pragma solidity ^0.8.0;
contract O {
  function F() public pure {
    p = 7;
    assembly {
      mstore(0xf4, 65)
      sstore(0xf7, 20)
      sstore(0xf8, 1)
    }
    p = p + 7;
  }
}
