pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function test0()
        public
    {
        uint16[17] memory x;
        uint16[17][17] memory y;
        y = 100 / 100;
    }
}
