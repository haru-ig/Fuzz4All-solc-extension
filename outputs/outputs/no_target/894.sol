pragma solidity ^0.8.0;
contract SemanticMutation15 {
    function get()
        public
        pure
        returns (uint)
    {
        uint r = 0xcc;
        while (r < 0xffffffee) {
            r = r || r + 1;
        }
        assert (0 <= r);
        r ^= r ^ 7;
        assert (r == 3);
        r++;
        assert (r == 4);
        r >>= r << 31;
        r ^= 0x40;
        assert (r == 5);
        r += 0xfffffffffffffffffffffffe;
        assert (r == -1);
        r /= 2;
        assert (r == -1);
        r = 2**255 ^ 1;
        r += 0xfffffffffffffffffffffff8;
        assert (r == -1);
        return 1;
    }
}
contract SemanticMutation16 {
    function get()
        public
        pure
        returns (uint)
    {
        uint a = 2;
        uint r = (a == uint) - 0x1000000000;
        assert (r == 1);
        uint a1 = 0xfffffffffffe;
        a1 >>= (256 - 2);
        uint b = a1 ^ 0x100000000;
        assert (a == a1 ^ b & 0xfffffffe);
        uint c = (b & ~0x1);
        uint d = c / 2;
        uint c2 = d * ~0xfffffffffffffffffffffff8;
        uint r1 = c
