pragma solidity ^0.8.0;
contract semanticEquivalentMutation10 {
    function semanticEquivalentAfterMutation(address addressA, uint256 a, uint b)
    public
    pure
    returns (uint, uint)
    {
        uint x = 0;
        uint y = 0;
        (x, y) = (a, b);
        return (x + 1, y + 1);
    }
}
