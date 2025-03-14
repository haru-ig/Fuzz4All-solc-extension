pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function test0()
        public
        pure
    {
        uint16 x;
        uint16[10] memory y;
        y[0][1] += x;
    }
}
