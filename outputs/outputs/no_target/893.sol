pragma solidity ^0.8.0;
contract SemanticMutation15 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xfffffffffffffffffffffffe;
        x <<= (256 - 2 * 32);
        uint y = 0xfffffffffffffffffffffff8;
        x |= y << (2 * 32 - 1);
        uint r = x;
        assert (r >> 401 < 1);
        r |= 0x1000000000;
        assert (false);
        r >>= 0;
        return r;
    }
}
contract SemanticMutation16 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xfffffffffffffffffffffffe;
        x <<= (256 - 4);
        uint y = 0xfffffffffffffffffffffff8;
        x |= y << (2 * 32 - 1);
        uint r = x;
        assert (r >> 401 < 1);
        r |= 0x1000000000;
        assert (false);
        r >>= 0;
        return r;
    }
}
contract SemanticMutation17 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xfffffffffffffffffffffffe;
        x <<= (256 - 16);
        uint y = 0xfffffffffffffffcfff8fff8fff8efff3ffe7ffeffefff8ffff2fffbff07fff7ffef67fcff777ffeffffffffffffff9fff3
