pragma solidity ^0.8.0;
contract semanticEquivalent {
    uint[10] public first;
    function setFirst() public
    {
        first[] memory second = new uint[3];
        first = second;
    }

    function _setFirst() public
    {
        first = new uint[](8);
    }
    function semanticEquivalentMutation(uint[10] memory first, uint x)
    public
    returns (uint)
    {
        uint[10] memory result = new uint[](first);
        return 0;
    }
}
