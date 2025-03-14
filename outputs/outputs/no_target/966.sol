pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function test0()
        public
        pure
        returns (uint, uint160)
    {
        uint16 x;
        uint16 y;
        (, uint160) z1;
        uint160 z2;
        return (x, z1);
    }
}
