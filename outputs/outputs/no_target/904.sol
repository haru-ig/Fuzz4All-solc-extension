pragma solidity ^0.8.0;
contract SemanticMutation16 {
    function get()
        public
        pure
        returns (uint)
    {
        uint48 x = 0xfffffffffffffffffffffffffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffe;
        uint48 y = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffffffffffefffffffffffffe;
        uint48 r = x << (4194304000000000000000000000000000000000000000000000000000000000000000000001fffffffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffe;
        uint p = log2(r);
        assert (false);
        r >>= 0;
        return p;
        }
}
