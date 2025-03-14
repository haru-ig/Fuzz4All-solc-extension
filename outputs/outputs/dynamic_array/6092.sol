pragma solidity ^0.8.0;
contract Test30000
{
  string public str;
  mapping (string => bool) internal boolMap;
  constructor () public
  {
    str = "hello world";
  }
 Fallback () external
  {
    str = "Hello World!";
  }
  event Log ();
  function () external payable returns (uint)
  {
    Log ();
    return 100;
  }
}
