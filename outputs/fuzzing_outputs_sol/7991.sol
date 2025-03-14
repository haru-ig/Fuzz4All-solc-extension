pragma solidity ^0.8.0;
contract Inequivalent
{
  function call() public pure returns(bool) { return true; }
}
contract Usage
{
  function useFallback() public pure{
  call EquivalentFallback();
  }

  fallback() public pure {
    call InequivalentFallback();
  }
}
