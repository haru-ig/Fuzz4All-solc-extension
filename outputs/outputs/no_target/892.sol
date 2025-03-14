pragma solidity ^0.8.0;
contract SemanticMutation15 {
    function get()
        public
        pure
        returns (uint)
    {
        uint[4] memory arr = [0xffffff31, 0xfffffffffffffffffffffe, 0x1ffffffffffffffffff8, 0xfffffffffffffffffffffff8];
        uint r = arr[3] << 401 + arr[2] + 10;
        r = r << -32 + 32;
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
        uint[17] memory arr = [0xffffff31, 0xfffffffffffffffffffffe, 0x1ffffffffffffffffff8, 0x3fffffffffffffffbfffec0, 0x1ffffffffffffffffffed8, 0xffffffffffffffffffffc1, 0xffffffffffffffffffffe2, 0xfffffffffffffffffffffffe, 0x3fffffffffffffffe2, 0x7fffffffffffffff11, 0xffffffffffffffffffffffe7];
        uint r = arr[8] << 401 + arr[6] + 10;
        r = r << -32 + 32;
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
        uint[18] memory arr = [0xffffff31, 0xfffffffffffffffffffffe, 0x1ffffffffffffffffff8, 0
