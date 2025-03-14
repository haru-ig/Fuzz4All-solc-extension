pragma solidity ^0.8.0;
contract c {
  function f() public { revert(new c()); }
}
