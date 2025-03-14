pragma solidity ^0.8.0;
contract semanticEquivalentNot_a_Copy_Mutation {
    function semanticEquivalentMutation(uint[] memory first)
    public
    returns (uint)
    {
        uint[8] memory result = new uint[](8);
        result[0] = 0;
        result=first;
        return 0;
    }
}
