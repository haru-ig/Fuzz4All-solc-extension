pragma solidity ^0.8.0;
contract MutationEquivalence2
{
    uint x;
    uint y;
    uint z;
    uint w;
    uint8 v;
    uint16 u;
    uint32 t;
    uint8 d;
    function equivalent() public
    {
        x += 7;
        y -= 18;
        z -= 1;
        w *= 20;
        v += 64;
        u += 10;
        t += 4;
        d -= 1;
    }
}

contract EquivalenceSample{

    function equivalentTo() public
    {
        MutationEquivalence MutationEquivalence_1;
        MutationEquivalence MutationEquivalence_2;
        if(MutationEquivalence_1.equivalent() && MutationEquivalence_2.equivalent())
        {
            x += 1;
        }
    }
    function equivalentFrom() public
    {
        MutationEquivalence MutationEquivalence_1;
        MutationEquivalence MutationEquivalence_2;
        if(MutationEquivalence_1.equivalentFrom() && MutationEquivalence_2.equivalentFrom())
        {
            x -= 1;
        }
    }
}

contract EquivalenceSample2{

    ContractToContractMutation Mutation_1;
    ContractToContractMutation Mutation_2;
    function equivalentTo() public
    {
        Mutation_1.equivalentTo();
        Mutation_2.equivalentTo();
    }

    ContractToContractMutation Mutation_3;
    ContractToContractMutation Mutation_4;
    function equivalentFrom() public
    {
        Mutation_3.equivalentFrom();
        Mutation_4.equivalentFrom();
    }

    ContractToContractMutation Mutation_5;
    ContractToContractMutation Mutation_6;
    function equivalentPairTo() public
    {
        Mutation_5.equivalentTo();
        Mutation_6.equivalentTo();
    }

    ContractToContractMutation Mutation_7;
    ContractToContractMutation Mutation_8;
    function equivalentPairFrom() public
    {
        Mutation_7.equivalentFrom();
        Mutation_8.equivalentFrom();
    }

    ContractToContractMutation Mutation_9;
    ContractToContractMutation Mutation_10;
    function equivalentPairToFrom() public
    {
        Mutation_9.equivalentToFrom();
        Mutation_10.equivalentToFrom();
    }
}

contract EquivalenceSample3{

    function sameSemanticallyEquiv() public
    {
        MutationEquivalence MutationEquivalence_1;
        return MutationEquivalence_1.equivalentFrom();
    }

    function sameSemanticallyEquiv2() public
    {
        MutationE
