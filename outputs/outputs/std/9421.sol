pragma solidity ^0.8.0;
contract Mutate
{
    uint public _a;
    uint public _result;
    function mutate(uint a) public returns(uint)
    {
        return _a + (_a/2) + a + (uint(keccak256(abi.encodePacked(block.difficulty, now, _a)))) + (uint(keccak256(abi.encodePacked(block.difficulty, now, _a)))));
    }
}
