pragma solidity ^0.8.0;
contract MutationEquivalence111
{
    MutationEquivalence111 public child;
    constructor () public {
        child = new MutationEquivalence111();
    }
    function setParent(MutationEquivalence111 storage parent) public
    {
        child = parent;
    }
    function getName() public view returns (string memory)
    {
        return child.timestamp.toString();
    }
}
