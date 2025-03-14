pragma solidity ^0.8.0;
contract semanticEquivalentNot_a_Copy_Mutation {
    function semanticEquivalentMutation(uint[] memory first, uint[] memory second)
    public
    returns (uint)
    {
        uint[] memory result = new uint[](8);
        result = second;
        return 0;
    }
}
