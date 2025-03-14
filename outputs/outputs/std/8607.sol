pragma solidity ^0.8.0;
contract MutationEquivalence96
{
   uint public timestamp = block.timestamp;
   mapping(uint => uint) public map;
    function func() public view
        returns (uint)
    {
        if (map[2]) {
           uint i = 0;
        } else {
           i = 4;
        }
        return 2 ** i;
    }
}
