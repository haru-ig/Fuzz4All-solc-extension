pragma solidity ^0.8.0;
contract SemanticEquivalent
{
    func semanticContract() public
    {
        address myContract = msg.sender;
    }
}
contract SemanticEquivalent
{
    constructor() public
    {
        address myContract = msg.sender;
    }
    function semanticContract() public
    {
        address myContract = msg.sender;
    }
}
