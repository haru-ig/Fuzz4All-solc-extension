pragma solidity ^0.8.0;
contract modifiedB2 {
  string bz;
  function f(uint8 a) public returns (uint8) {
    if (bz == "") {
      bz = a.toString();
      bz = "abcdef";
      return a + 1;
    }
  }
}

contract main {


  function main(uint8 _arg1) public {
    uint8 arg1 = _arg1;
    uint8 result = modifiedB1.f(arg1);
    assert(result == modifiedB1.f(modifiedB1.f(modifiedB1.f(arg1))));
    result = modifiedB2.f1(arg1);
    assert(result == modifiedB1.f(modifiedB1.f(modifiedB1.f(arg1))));
    result = modifiedB2.f2(arg1);
    assert(result == modifiedB1.f(modifiedB1.f(modifiedB1.f(arg1))));
  }
}
