pragma solidity ^0.8.0;
contract FallbackMutator
{
  uint public fallbackValue;
  fallbackMutator
    internal
    {
      fallbackValue += 2;
    }
}
contract Fallback
{
  fallbackMutator fallbackMutator;
  function Fallback() public
    {
      fallbackMutator = new fallbackMutator();
    }
  function FallbackMutator() public {
    fallbackMutator = new fallbackMutator();
  }

  fallback
    public
    payable
    receive
    {
      fallbackValue += 8;
    }
}
