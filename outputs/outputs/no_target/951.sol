pragma solidity ^0.8.0;
contract SemanticMutation9 {
    function test0()
        public
        pure returns (uint16)
    {
        uint16 x = 4;
        x >>= 1;
        uint16 y = uint16(x >> x);
        return x * 555 + 4 * 655 + uint16(x + x);
    }
}
