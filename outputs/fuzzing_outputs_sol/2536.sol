pragma solidity ^0.8.0;
contract CallerInterface
{
  uint256 public fallbackValue;
  function callFallback() public payable {
    fallbackValue += 5;
  }
  function callFallback2() public {
    fallbackValue += 6;
  }
  receive() payable public {

    fallbackValue += 7;
  }
}
