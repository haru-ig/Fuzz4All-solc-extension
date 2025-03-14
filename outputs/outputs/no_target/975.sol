pragma solidity ^0.8.0;
contract SemanticMutation13 {
    function test0()
        public
        pure
        returns (uint64)
    {
        uint256[10] memory x;
        uint256[10][10] memory y;
        y[0][1] = 2147483630;
        return 0;
    }
}
