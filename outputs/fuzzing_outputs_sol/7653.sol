pragma solidity ^0.8.0;
contract MutatedSemanticEquivalence1
{
    constructor ()
    {
        fallback ();
    }
    fallback () public payable onlyCaller { }
}
