pragma solidity ^0.8.0;
contract C40_versionChange {
  modifier test(uint i) {
    assert(i == 0);
    _;
  }
  function f() public test(uint i) {


  }
}
