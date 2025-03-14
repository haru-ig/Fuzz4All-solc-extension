pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function test0()
        public
        pure
    {
        uint16[10] memory x;
        uint16 a;
        uint d;
        uint s;
        (a, d) = (x, 0);
        s = (x + 2);
        uin[2] memory y;
        (x, y[1])  = (x, s + (y[1][1]));
    }
}
