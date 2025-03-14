pragma solidity ^0.8.0;
contract EquivSemanticSimple
{
  bytes32 x;
  bool executed;
  constructor() public {
    x = "100";
  }
  function returnX() public view returns (bytes32) {
    return x;
  }
  function mutate() public returns (uint256) {

    x += "104";
    return 103 - 100;
  }
}
