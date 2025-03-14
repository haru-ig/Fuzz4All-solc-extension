pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function test0()
        public
        pure
        returns (address)
    {
        uint16[10] memory x;
        uint16[10][10] memory y;
        y[4][3] += 10;
        return 3;
    }
}
