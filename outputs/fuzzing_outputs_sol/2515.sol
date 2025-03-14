pragma solidity ^0.8.0;
address payable addressCaller;
contract CallCaller {
  uint256 public constant value = 1;
  function functionCaller() public pure {addressCaller.transfer(value);}
}
