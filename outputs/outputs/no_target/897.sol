pragma solidity ^0.8.0;
contract SemanticMutation15 {
    function get()
        public
        pure
        returns (uint256)
    {
        uint256 r = get();
        r += 0x200000000000000000000000000000000000000000000000000000000000000000;
        assert (false);
        r >>= 0;
        return r;
    }
}
contract SemanticMutation16 {
    function get()
        public
        pure
        returns (uint256)
    {
        uint256 r = get();
        r += 0x3fffffff800000000;
        assert (false);
        r >>= 0;
        return r;
    }
}
contract SemanticMutation17 {
    function get()
        public
        pure
        returns (uint256)
    {
        uint256 r = get();
        r += 0x3fffffff800000000;
        assert (false);
        r = r << -64 + 64;
        assert (false);
        r >>= 0;
        return r;
    }
}
