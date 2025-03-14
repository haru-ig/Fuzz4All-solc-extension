pragma solidity ^0.8.0;
library Semantics_inline2b {
    uint constant constant1 = 600;
    uint constant constant2 = 99;
    uint constant constant3 = 300;
    uint constant constant4 = 500;
    uint constant constant5 = 300;
    uint constant constant6 = 300;
    uint constant constant7 = 300;
    function getMin()
        pure
        returns(uint256)
    {
        return (constant4<constant5? constant4 : constant5);
    }
}
