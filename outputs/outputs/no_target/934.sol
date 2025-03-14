pragma solidity ^0.8.0;
contract SemanticMutation6 {
    function test()
        public
        pure
        returns (uint)
    {
        uint160 z;
        uint x;
        assembly {
            x := add(x, mload(z))
            x := add(x,1)
            x := add(x, sub(31,x))
            x := add(x, x, sub(4095, x))
        }
        assert (x <= 5000);
        return x;
    }
    function test1()
        public
        pure
        returns (uint32 x)
    {
        uint n;
        n += n;
        uint x0 = 1;
        uint x1 = 1;
        while (x0 <= x1) {
            x0 /= 2;
            x1 *= 2;
        }
        uint r = n;
        uint s = 0;
        uint i;
        assembly {
            i := mul(4, mload(z))
            i := mul(i, mload(15))
            i := mul(i, mload(14))
            i := mul(i, mload(3))
            s := and(s, n)
            s := or(s, mload(i))
            s := and(s, n)
            s := or(s, mload(i))
            s := and(s, n)
            i := add(n, s)
            r := add(4, add(x, x), sub(8, i))
        }
        assert(r >= min(x0, x1));
        return r;
    }
    function test2()
        public
        pure
        returns (uint160 x)
    {
        uint i;
        uint x0 = 1;
        while (x0 >= 1) {
            x0 /= 2;
            x0 *= 2;
        }
        uint n;
        n += n;
        i = mul(4, mload(0x8000000000000000000000000000000000000000000000000000000000000
