pragma solidity ^0.8.0;
contract semanticEquivalentMutation {
    function semanticEquivalent()
    public
    pure
    returns (bool)
    {
        bool[] memory bool_array = new bool[](2);
        uint256 x = 18;
        uint256 y;
        bool_array[0] = false;
        bool_array[1] = false;
        address z;
        uint yz;
        bool[] memory foo;
        foo[0] = true;
        foo[1] = true;
        return false;
    }
}
