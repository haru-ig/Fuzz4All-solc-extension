pragma solidity ^0.8.0;
contract ComplexOperationInterface
{
  uint256 public fallbackValue;
}
contract CallerInterface
{
  function callContractWithFallback() external payable {}
  function sendEtherByFallback() public payable {}
  function sendEtherByFallbackAndReceive() public payable receive () {}
}
