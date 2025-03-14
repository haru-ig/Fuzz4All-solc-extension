pragma solidity ^0.8.0;
contract Mutate
{
    function MutateInt(uint a, uint b) public pure returns(uint)
    {
        return (a-b);
    }
}
