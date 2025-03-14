pragma solidity ^0.8.0;
contract semanticEquivalentNot_a_Copy_Mutation_2 {
    function semanticEquivalentMutation(uint[2][] memory first, uint[2][] memory second)
    public
    returns (uint[2])
    {
        uint[2][] memory result = new uint[2][];
        result = second;
        return 0;
    }
}
pragma solidity ^0.8.0;
contract semanticEquivalentNot_a_Copy_Mutation_3 {
    function semanticEquivalentMutation(uint[][] memory first, uint[][] memory second)
    public
    returns (uint[][] memory)
    {
        uint[][] memory result = new uint[0][];
        return 0;
    }
}
