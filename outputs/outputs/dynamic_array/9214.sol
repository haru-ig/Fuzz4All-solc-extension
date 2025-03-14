pragma solidity ^0.8.0;
contract semanticEquivalent_b_Copy_Mutation {
    function semanticEquivalentMutation(uint[] memory first, uint[] memory second)
    public
    pure
    returns (uint)
    {
        return first.length;
    }
}
