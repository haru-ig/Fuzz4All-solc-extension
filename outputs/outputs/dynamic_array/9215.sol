pragma solidity ^0.8.0;
contract semanticEquivalent_b_Copy_Mutation_4_0 {
    function semanticEquivalentMutation(uint[] memory first, uint[] memory second, uint[] memory a)
    public
    pure
    returns (uint)
    {
        return a.length;
    }
}
contract semanticEquivalent_b_Copy_Mutation_4_0_2 {
    function semanticEquivalentMutation(uint[] memory first, uint[] memory second, uint[] memory a)
    public
    pure
    returns (uint)
    {
        return a.length;
    }
}
contract semanticEquivalent_b_Copy_Mutation_4_5 {
    function semanticEquivalentMutation(uint[] memory first, uint[] memory second, uint[] memory a)
    public
    pure
    returns (uint)
    {
        return first.length;
    }
}
