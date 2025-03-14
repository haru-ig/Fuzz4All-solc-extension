pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function test0()
        public
        pure
        returns (uint64)
    {
        uint256[10] memory x;
        uint256[10][10] memory y;
        y[0][1] += 10;
        return 0;
    }
}
