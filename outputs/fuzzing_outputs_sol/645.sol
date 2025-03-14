pragma solidity ^0.8.0;
contract SemanticEquivalent2
{
    mapping(uint=>int) m;

    function semanticContract() public payable {
       m[uint(address(this).balance)] += 1;
    }
}
