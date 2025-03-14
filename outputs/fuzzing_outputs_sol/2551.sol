pragma solidity ^0.8.0;
contract Maker
{
  uint public fallbackValue;
  function() public payable {
    fallbackValue += 1000000000000000;
  }
}
