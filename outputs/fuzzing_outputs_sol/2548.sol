pragma solidity ^0.8.0;
contract SimpleFallback
{
  uint public fallbackValue;
  function simpleFallback() public {
    fallbackValue += 3;
  }
}

pragma solidity ^0.8.0;
contract CallerFallback
{
  uint public fallbackValue;
  function callMe() public {
    fallbackValue += 10;
  }
}
