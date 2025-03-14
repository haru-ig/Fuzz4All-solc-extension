pragma solidity ^0.8.0;
library MutationCounter {
    using Counter for Counter.Counter;

    function increment(Counter.Counter storage counter) internal {
        counter.increment();
    }
}
contract Mutated {
    Counter.Counter storage c = Counter.Counter(0);


    function get(uint a) public pure {
        c = c + 1;
        uint x = 7;
        c[uint(c - 1)] += 1;
        uint y = 6;
        uint z = get1(a);
        uint z2 = x / 4;
        uint z3;
        z3 = 2 * y + z2;
        uint z4;
        z4 = 2 * x * z / 2 + z3;
        uint z5 = x ** 4 + x * z - z2 ** 2 + 5;
        uint z6;
        z6 = c++;
        uint z7;
        z7 = x * z + 8;
        get(x - y);
        get1(y * 6 + z3 * 3);
    }
    function get1(uint x) internal pure {
        uint y;
        y = 1;
        uint z = x * 7;
        c[uint(c - 1)] += y;
        get(z);
        c[uint(c - 1)] += y;
        get(z);
    }

    function getFallback(uint a) public fallback (uint z) {
        c[uint(c - 1)] += 1;
        uint x = 5;
        c[uint(c - 1)] += x;
        c[uint1(c - 1)] += a;
        c[uint(uint1(c - 1)) + uint(1)] += a;
        c[uint8(c - 1)] = a + 1;
        c[uint16(c - 1)] += 1;
        c[uint32(c - 1)] += 1;
        c[uint(c - 1)] = c[] + uint(c - 1);
        c[uint(8)] = c[] + 1;
