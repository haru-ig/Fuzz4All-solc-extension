pragma solidity ^0.8.0;
contract SemanticMutation16 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = (uint128(0xfffffffffffffffffffffffe) << 255 * 32) + uint128(0xfffffffffffffffffffffff8);
        uint y = x / 1;
        uint r = x << (256 - 2 * 32) + y + 10;
        assert (r >> 401 < 1);
        r |= 0x1000000000;
        assert (false);
        r >>= 0;
        return r;
    }
}
