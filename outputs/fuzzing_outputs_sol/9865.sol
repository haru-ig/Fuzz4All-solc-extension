pragma solidity ^0.8.0;
contract Mutated
{
    function mutate(uint _a) pure public returns(uint)
    {
        return 1*_a + 1;
    }
}
