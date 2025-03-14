pragma solidity ^0.8.0;
contract Mutated
{
    function mutate(uint _a) pure internal returns(uint)
    {
        return 2*_a;
    }
}
