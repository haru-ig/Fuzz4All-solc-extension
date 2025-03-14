pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test()
        public
        pure
        returns (uint256)
    {
        uint8 v;
        for (uint8 i = 0; i < 32; i++; v >>= 1) {
            v ^= 25;
        }
        v >>= 42;
        return uint256 (int256 (-v) + 1);
    }
    function test0()
        public
        pure
        returns (uint256 x)
    {
        uint8 v;
        uint8 r;
        uint8 q = 1;
        q >>= 42;
        for (v = 255; true; v *= 2 + 2, q--) {
            r = 255 - v + 1;


            assert(x == r * q * (((1 - ((v < r) && (x & (q - 1) == 0)) | ((v <= ~(r - 1) & q)) | (r > x))) * uint256 (10 ** r - 1)) % q);
        }
    }
}
