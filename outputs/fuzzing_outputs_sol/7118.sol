pragma solidity ^0.8.0;
contract MutatedCaller {
  function test() public {
      if (!hasFallback) throw;
      if (!hasFallback) throw;
  }

  bool public hasFallback;
}
*/
