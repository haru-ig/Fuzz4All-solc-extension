pragma solidity ^0.8.0;
contract SemanticMutation20 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xfffffffffffffffffffffffe;
        uint y = -1;
        uint z = 2 * y + 10;
        uint r;
        r = x << (256 - 2 * 128)
            3
        + y << (8 - 2 * 32)
            3
        + z << (2 - 2 * 32)
            3
        + 10
        ;
        assert (r >> 401 < 1);
        return r | (x >> 255);
    }
}
