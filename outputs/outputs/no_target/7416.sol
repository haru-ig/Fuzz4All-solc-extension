pragma solidity ^0.8.0;
contract Test {
  uint x = 1;
  uint y = constant1;

  function test1() public pure {
    assert (constant1 == 1.0);
    assert (constant1 == constant1);
    assert (constant1!= constant1);

    uint128 temp1 = 1;
    uint128 temp2 = constant1;

    assert (temp1 == 1);
    assert (temp2 == constant1);
    assert(temp1 == temp2);
  }
}
