pragma solidity ^0.8.0;
contract semanticEquivalent_a_Mutable_Mutation {
    uint[5] memory test;
    uint[5] test1;
    function semanticEquivalentMutation()
    public
    view
    returns (uint[] memory)
    {
        uint[] memory result;
        result = test;
        test1 = test;
        return test;
    }
}
assembly {
}
