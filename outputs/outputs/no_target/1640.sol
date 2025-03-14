pragma solidity ^0.8.0;
contract Semantic0012 {
    bytes2 b;
    bytes32 c;
    bytes4 d;
    uint256 m;
    uint e;
    uint f;

    function notEqualWithoutCast(uint256, uint256) public pure {
        b += b;
        b -= b;
        b ^= b;
        b *= b;
        b /= b;
        b %= b;

        c += c;
        c -= c;
        c ^= c;
        c *= c;
        c /= c;
        c %= c;

        d += d;
        d -= d;
        d ^= d;
        d *= d;
        d /= d;
        d %= d;

        m += m;
        m -= m;
        m ^= m;
        m *= m;
        m /= m;
        m %= m;

        e |= e << 8;
        e |= e >> 8;

        f |= f << 8;
        f &= f >> 8;

        uint256 y = c >> 29 * M_02253__ - c >> 14 * M_0055__ - c >> M_01* M_012__ - c;
        uint256 t = ((c >> 29 * M_02253__ + y) * 4294967296U - 49152U) >> 32;
        y *= -217852576;
        k2 = y >> 32;
        uint m1 = y & M_0219__;
        uint t1;
        if(m1 >= 10**(2*M_0055__)) {
          t1 = t >> 18 * M_0055__ + 65530; t1 /= 95851057461945;
        } else {
        t1 = t >> 29 * M_02253__ + 2802822246; t1 /= 207646775638227;
        }
        if(m <= 0) {
        h = t + 674520552;
        h %= 9585178038470866;
        } else if(m == 1 * M_0055__) {
        h = t + 1
