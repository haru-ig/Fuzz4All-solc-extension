pragma solidity ^0.8.0;
contract semanticEquivalent_b_Add_Index {
    function semanticEquivalentMutation(uint[] memory first)
    public
    returns (uint)
    {
        uint[] memory result = new uint[](8);
        result = first;
        result[0] += 1;
        return 0;
    }
}
pragma solidity 0.7.3;
