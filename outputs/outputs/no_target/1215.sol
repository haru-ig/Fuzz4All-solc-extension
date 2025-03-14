pragma solidity ^0.8.0;
contract MutatedInjection
{
  function injectedTest() public pure {
      int memory z = 0;
      for (uint i = 0; i < 10; i++)
        z = z + 1;
      assert(z == 11);
      for (uint i = 0; i < 10; i++)
        z = z - 1;
      assert(z == 9);
      for (uint i = 0; i < 10; i++)
        z = z * 2;
      assert(z == 60);
  }
}
