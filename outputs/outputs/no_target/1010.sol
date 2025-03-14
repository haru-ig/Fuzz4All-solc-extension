pragma solidity ^0.8.0;
contract SemanticMutation16
{
    SemanticMutation15 public parent1;

    function callModify() public pure {
        parent1.modify();
    }
}
