pragma solidity ^0.8.0;
contract SemanticMutation12{
    function test0()
        public
        pure
        returns (uint64)
    {
        (uint256[10] memory result, uint) memory mem;

        (uint256[10][10] memory result, uint) memory mem2;
        uint256[10][10] memory y;
        y[0][1] += 10;
        return 0;
    }
}
