pragma solidity ^0.8.0;
contract semanticEquivalentCopy_a_Copy_Mutation {
    function semanticEquivalentMutation(uint[] memory first, uint[] memory second)
    public
    returns (uint)
    {
        first = second;
        return 0;
    }
}
pragma solidity ^0.8.0;
contract semanticEquivalentCopy_a_Mutation {
    uint[] memory first = new uint[](2);
    function semanticEquivalentMutation(uint[] memory first, uint[] memory second)
    public
    returns (uint)
    {

        first = second;
        return 0;
    }
}
pragma solidity ^0.8.0;
contract semanticEquivalentCopy_Not_a_Mutation {
    uint[] memory first = new uint[](2);
    function semanticEquivalentMutation(uint[] memory first, uint[] memory second)
    public
    returns (uint)
    {
        delete first;
        return 0;
    }
}
