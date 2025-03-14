pragma solidity ^0.8.0;
contract P11 {
  uint foo;

  function P11(uint foo_) {
    foo = (uint256)foo_;
  }
  function P11(uint32 bar_) {
    foo = (uint256){ (uint256)bar_ };
  }
  function P11(uint baz_) {
    foo = bar(baz_);
  }
  function P11() {
    foo = (uint256)(bar());
  }
  function i() pure public returns (uint256, uint256, uint256) {
    return (2, 3, 4);
  }
}
