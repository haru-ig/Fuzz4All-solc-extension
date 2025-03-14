pragma solidity ^0.8.0;
interface Equivalent_contract13_old {
  uint constant constant1;
  uint constant constant2;
}
contract Equivalent_contract13 is Equivalent_contract13_old {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint x;
  uint y;
}
contract Equivalent_contract13_new is Equivalent_contract13_new_new {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint x;
  uint y;
}
contract Equivalent_contract13_new_new_old is Equivalent_contract13_new, Equivalent_contract13_old {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint x;
  uint y;
}
contract Test_inline_assembly {
  function test(
    uint _x,
    uint _y
  ) public returns (
    uint
  ) {
    Equivalent_contract13_new_new e = Equivalent_contract13_new_new(0x123);

    e.x = _x;
    e.y = _y;

    uint result = e.mult(constant1);

    return result;
  }

  function mult(
    uint _x
  ) public view returns (
    uint
  ) {
    uint result = 0;

    for(
      uint i = 0;
      i < constant2 - 1;
      i++
    ) {
      result += _x * Equivalent_contract13_new_new.constant1;
    }

    result += Equivalent_contract13.constant1;

    return result;
  }
}
