pragma solidity ^0.8.0;
library HelloTest {
  function test() public pure returns (uint256)
  {
    return 2;
  }
}
contract Mutator18 {
 uint _counter;
 constructor(mutator18 _m) public {
  uint a = HelloTest.test();
  uint b = HelloTest().test();
  assert(_m._counter == 2);
 }
}
