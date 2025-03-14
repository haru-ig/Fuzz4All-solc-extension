pragma solidity ^0.8.0;
contract Semantics_inline3 {
  function test() public pure returns (uint sum) {
    sum = constant1;
    1000;
    700;
    99;
  }
  function test2() public pure returns (uint constant) {
    Constant_test();
  }
  function test3() public pure returns (uint constant, uint constant) {
    Constant_test();
    return Constant_test();
  }
  function test4() public pure returns (uint constant, uint constant, uint constant) {
    Constant_test();
    return Constant_test();
  }
  function test5() public pure returns (uint, uint, uint, uint, uint, uint) {
    Constant_test();
    return Constant_test();
  }
  function Constant_test() pure internal returns (uint) {
    return constant3;
  }
}
