pragma solidity ^0.8.0;
contract Mutation
{
mapping (uint => uint) map_;
mapping (uint => uint) map1_;
mapping (uint => uint) map2_;
mapping (address => uint) map3_;
function testMutation(uint x) public pure
{
map_[x] = map_[x]*3;
map1_[x] = map1_[x]*5;
map2_[x] = map2_[x]*7;
map3_[x] = map3_[x]*259;
}
}
