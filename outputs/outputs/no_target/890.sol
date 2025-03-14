pragma solidity ^0.8.0;
contract SemanticMutation15 {
    function get(uint z)
        public
        pure
        returns (uint)
    {
        uint r = 0;
        for (uint i = 0; i < 8; i++) {
            r |= (z >> (128 + i)) & 0x1 << i;
        }
        assert (r >= 2147483648);
        r |= (-z) << 64;
        assert (r == z);
        r >>= 0;
        return r;
    }
}
contract SemanticMutation16 {
    function get(uint z)
        public
        pure
        returns (uint)
    {
        uint r = 0;
        for (uint i = 0; i < 8; i++) {
            r |= (z >> (257 - 127 - i)) & 0x1 << i;
        }
        assert (r >= 48388608);
        r |= (-z) << 64;
        assert (r == z);
        r >>= 0;
        return r;
    }
}
contract SemanticMutation17 {
    function get(uint z)
        public
        pure
        returns (uint)
    {
        uint r = 0;
        for (uint i = 0; i < 8; i++) {
            r |= (z >> (32 - 193 + i)) & 0x1 << (117 - 149 - i);
        }
        assert (r >= 65536);
        r
