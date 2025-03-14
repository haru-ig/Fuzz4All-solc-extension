pragma solidity ^0.8.0;
contract semanticEquivalent_a_Copy_Mutation {
    function semanticEquivalentMutation(uint[] memory first, uint[10] memory second)
    public
    returns (uint)
    {
        uint memory result = 0;
        for(uint i = 0; i < 9; i = i + 1) {
            result = result * 10 + second[i];
        }
        return 0;
    }
}
