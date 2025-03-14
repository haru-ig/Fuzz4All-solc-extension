pragma solidity ^0.8.0;
contract BetterProgram {
  bytes32 constant X = '100';
  function mutate() public
  {
    x = '0';
  }
}
contract BetterProgram {
  bytes32 constant X = '100';
  uint public immutable data;
  constructor() public {
    data = 1;
  }
  function() public view {
    require(data >= 4);
    revert("Revert");
  }
}
