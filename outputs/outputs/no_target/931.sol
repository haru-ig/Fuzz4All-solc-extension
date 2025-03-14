pragma solidity ^0.8.0;
contract SemanticMutation6{

    function f(
        uint32 x)
        public
        pure
        returns (uint32 r)
    {
        uint32 x1 = x << 1;
        uint32 x2 = x >> 1;
        uint32 x3 = (x1 & x2) | ((~x) & (x1 ^ x2));
        uint32 x4 = (x & 1) | ((x1 | x2) ^ (x>>1));
        r = (x >= 1) && ((x + (x>>1) & 3)!= 1? 4294967172 : 0) ;
        r |= (x >= 2) && ((x + (x >> 1) & 3)!= 2? 4294967172 : 0);
        return ((x >= 3) && ((x - (x >> 1)) & 3)!= 3? 4294967172 : 0);
    }
}
contract SemanticMutation7{

    function G(
        uint32 x)
        public
        pure
        returns (uint32 r)
    {
        uint32 x1 = x + x;
        uint32 x3 = (x | x1) & (x << 1) & (x + x);
        uint32 x22 = (x & x1) | ((x * x3) >> 1);
        uint32 x23 = (x1 | x1) & (x1 << 1) | ((x1|x22) >> 2);
        uint32 x2 = x23 | ((x | x1) << 1) & (x1 + x1);
        uint32 x4 = (x1 | x1) & (x | x1) & (x1 << 1) | ((x | x1) & (x * x1));
        uint32 x6 = x1 | (x << 1) & (x | x1);
        uint32 x5 = x | (x1 + x1) & (x1 >> 1) | (x1 <<
