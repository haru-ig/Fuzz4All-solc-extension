pragma solidity ^0.8.0;
contract semanticEquivalentNot_a_Mutable_Mutation {
    function semanticEquivalentMutation()
    public
    view
    returns (uint[] memory)
    {
        uint[] memory result;
        for (uint i = 0; result.length < 5; i++) {
          result[4] = 0;
        }
        return result;
    }
}
