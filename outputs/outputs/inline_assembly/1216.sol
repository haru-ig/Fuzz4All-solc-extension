pragma solidity ^0.8.0;
interface TestInterface
{
    function func() external view returns (bool);
}
contract MutateProgram extends BetterProgramV3
{
  address old;
  TestInterface testInterface;
  constructor() public
  {
    old = address(this);
  }
  function test() public {
    require(mutated(), 'MutateProgram - error: mutated');
  }
  function mutated() public returns (bool) {
    testInterface = TestInterface(old);
    bool b;
    (b, ) = testInterface.func();
    return!(b);
  }
}
