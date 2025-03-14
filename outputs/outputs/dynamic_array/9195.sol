pragma solidity ^0.8.0;
contract semanticEquivalent_a_Mutable_Mutation {

    uint arraySize = 2;
    uint[] memory result;

    constructor(uint a)
    public
    {
        arraySize = a;
        result.length = arraySize;
    }

    function semanticEquivalentMutation()
    public
    view
    returns (uint[] memory)
    {
        uint[] memory result;
        for (uint i = 0; arraySize > 0; i++) {
          result[arraySize-1] = 0;
          arraySize = arraySize - 1;
        }
        return result;
    }
}
