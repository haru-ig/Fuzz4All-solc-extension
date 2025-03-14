pragma solidity ^0.8.0;
contract Mutaction
{
  uint256 public fallbackValue;

  function fallback() public
    {
    fallbackValue -= 5;
    fallbackValue *= 4;
    fallbackValue /= 3;
  }
}
