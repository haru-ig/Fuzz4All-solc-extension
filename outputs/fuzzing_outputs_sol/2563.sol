pragma solidity ^0.8.0;
contract FallbackMutated
{
  constructor(uint _fallbackValue) public {
    fallbackValue = _fallbackValue;
  }

  fallback mutated function() public {
    fallbackValue += 2;
  }
}
