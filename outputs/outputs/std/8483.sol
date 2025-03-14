pragma solidity ^0.8.0;
contract Mutations
{
    function mutate() public
    {
        MutationEquivalence a = new MutationEquivalence();
        uint a_balance = a.equivalent();
    }
}
