pragma solidity ^0.8.0;
contract MutatedNoFallbackInterface
{
  uint256 public fallbackValue;
  constructor() {
    fallbackValue += 11;
  }
  fallback()
    public {}

  receive()
    public {
    fallbackValue += 1;
  }
}

contract Caller
{
  event FallbackCalled(uint256 _v);

  NoFallbackInterface noFallback;
  MutatedNoFallbackInterface mutatednoFallback;

  constructor()
  {
    noFallback.fallback();
    mutatednoFallback.fallback();
  }

  function callNoFallback(uint256 v)
    public
    {
    emit FallbackCalled(noFallback.fallbackValue);
  }

  function callMutatedNoFallback(uint256 v)
    public
    {
    emit FallbackCalled(mutatednoFallback.fallbackValue);
  }

  function noFallbackCall()
    public
    {
    callNoFallback(0);
  }

  function mutatednoFallbackCall()
    public
    {
    callMutatedNoFallback(0);
  }
}
