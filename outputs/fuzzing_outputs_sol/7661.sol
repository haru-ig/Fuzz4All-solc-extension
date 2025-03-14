pragma solidity ^0.8.0;
mutatedsemanticequivalence public mutatedsemanticequivalence_0 = new mutatedsemanticequivalence(0x000000000000000000000000000000000000000);
constructor()
{
    mutatedsemanticequivalence_0.receive();
}
contract MutatedSemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    function fallback () public payable {
    }
    receive () external payable { }
}
