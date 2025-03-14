pragma solidity ^0.8.0;

contract Mutation
{
    fallback() public payable
    {


        Mutator3.c();
    }
}
