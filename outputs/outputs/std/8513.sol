pragma solidity ^0.8.0;
contract MutationsGeneration1
{
  function generate(uint256 count) public {
    uint256[] memory generated;
    for(uint256 i = 1; i <= count; i++) generated.push(i);
  }
}
