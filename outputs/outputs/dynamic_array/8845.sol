pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityPointers2 {

  SemanticallyEquivalentSolidityPointers1 public A;
  uint x;

  constructor(uint x_) {
    A = new SemanticallyEquivalentSolidityPointers1(x_);
    x = 7;
  }
  function f_1() public view returns(uint) {
    return A.get_arrayofArrays20(7);
  }

  function f_2() public view returns(uint) {
    return A.get_arrayofArrays20(5);
    A.get_arrayofArrays20(5).push(7);
    if (x < 9) {
      A.get_arrayofArrays20(5).push(3);
    }
  }
}
