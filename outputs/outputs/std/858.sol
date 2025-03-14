pragma solidity ^0.8.0;
contract Mutation
{
mapping (uint => uint) map_ = new Map[0][];
function testMutation() public pure
{
  return map_[0][0];
}
}
contract Same7
{
function mutationTest() public pure {
}
}
