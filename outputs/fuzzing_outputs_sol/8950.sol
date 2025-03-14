pragma solidity ^0.8.0;

contract MultipleFallbacks {
  emit MultipleEvents(uint value1, uint value2);

  function multipleCalls0() public returns (address expectedSender);
  function multipleCalls1(uint) public returns (bool success);
  function multipleCalls2(uint, uint) public;
  function multipleCalls3(uint, uint, uint) public;
  function multipleCalls4(uint, uint, uint, uint) public;
  function multipleCalls5(uint, uint, uint, uint, uint) public;
  function multipleCalls6(uint, uint, uint, uint, uint, uint) public;
  function multipleCalls7(uint, uint, uint, uint, uint, uint, uint) public;

  function __fallback0() public returns (address addr) {}

  function __fallback1(uint) public pure returns (uint) {}

  function __fallback2(uint, uint) public {}

  function __fallback3(uint, uint, uint) public {}

  function __fallback4(uint, uint, uint, uint) public {}

  function __fallback5(uint, uint, uint, uint, uint) public {}

  function __fallback6(uint, uint, uint, uint, uint, uint) public {}

  function __fallback7(uint, uint, uint, uint, uint, uint, uint) public {}
  enum Events {
    FallbackEvent0,
    FallbackEvent1
  }

  event MultipleEvents(uint value1, uint value2);
}
