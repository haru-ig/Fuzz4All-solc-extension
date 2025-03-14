pragma solidity ^0.8.0;
contract Mutate
{
    function MutateInt(uint a, uint b) public view returns(uint)
    {
        return (a-b);
    }
}
