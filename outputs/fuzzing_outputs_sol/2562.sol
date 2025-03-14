pragma solidity ^0.8.0;
error MutatedFallbackException();
contract Mutated
{
  constructor() public {
    address(this).call{value: address(this).balance}("");

  }
}


pragma solidity ^0.8.0;
contract FallbackContract
{
  uint public fallbackValue;
  fallback() public {
    fallbackValue += 2;
    fallbackValue -= 2;
    fallbackValue++;
  }
}
