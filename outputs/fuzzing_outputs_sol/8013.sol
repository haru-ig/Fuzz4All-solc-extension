pragma solidity ^0.8.0;
contract MuteableFallback
{
  function () external payable {}
  function setFallbackValue() public { fallback() }
}
contract MutatedFallback
{
  function ()
    public
    payable
  {
   MuteableFallback fallbackValue = MuteableFallback(0x00);
   fallbackValue.setFallbackValue();
  }
}
contract MultiFallback
{
  function() public payable {}
  function fallback() external payable {}
}
