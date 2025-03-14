pragma solidity ^0.8.0;
contract Mutation {
    function Mutation() public payable {
        Mutator mutator = Mutator(0x23548);
        emit MutationMade(mutator);
    }
    event MutationMade(Mutator s);
}
