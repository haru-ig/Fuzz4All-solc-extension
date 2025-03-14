pragma solidity ^0.8.0;
contract SemanticMutation10 {
    function test0()
        public
        pure
    {
        uint16[10] memory x;
        uint16[10][10] memory y;
        y[0][1] += 10;
    }
}
