pragma solidity ^0.8.0;
contract semanticEquivalent_a_Copy_Mutation {
    function semanticEquivalentMutation(uint[] memory first, uint[] memory second)
    public
    returns (uint)
    {
        uint[] memory result = new uint[](8);
        result = new uint[](9);
        result = second;
        return 0;
    }
}
