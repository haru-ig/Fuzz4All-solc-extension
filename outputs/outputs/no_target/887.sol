pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function get()
        public
        pure
        returns (uint)
    {
        uint r = get();
        r += 0x4000000000;
        assert (false);

        r >>= 0;
        return r;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation12 {
    function get()
        public
        pure
        returns (uint)
    {
        uint r = get();
        r += 0x1000000000;
        assert (false);

        r >>= 0;
        return r;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation13 {
    function get()
        public
        pure
        returns (uint)
    {
        uint r = get();
        r += 0x1000000000;
        assert (false);
        r = r << -32 + 32;
        assert (false);

        r >>= 0;
        return r;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation14 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xfffffffffffffffffffffffe;
        uint y = 0xfffffffffffffffffffffff8;
        uint r = x << (256 - 2 * 32) + y + 10;
        assert (r >> 401 < 1);
        r |= 0x1000000000;
        assert (false);
        r >>= 0;
        return r;
    }
}
