pragma solidity ^0.8.0;
contract Convert {
    uint[] public arr;
    function convert(uint a, uint b) public pure returns(string) {
        if (a == 0) return "0";
        if (b == 0) return "0";
        uint min = a >= b? a : b;
        uint max = a > b? a : b;
         uint diff = max - min;
         uint[] memory array = new uint[](diff + 1);
        array[0] = a;
        for (uint i = 1; i <= diff; i++) {
            array[i] = 0;
        }
        for (uint i = 0; i < diff; i++) {
            uint val = min + i;
            if (val < min + i) val = min + i;
            if (val > max - i) val = max - i;
            array[i] = val;
        }
        if (b > a) {
            for (uint i = array.length; i > 0; i--) {
              uint num = array[i-1];
              array[i-1] = array[i];
              array[i] = num;
            }
        }
        return convert2(a, b, array);
    }
    function convert2(uint a, uint b, uint[] memory array) public pure returns(string) {
        if (a == 0) return "0";
        if (b == 0) return "0";
        string[] memory res = new string[](array.length);
        if (b > a) {
            for (uint i = array.length; i > 0; i--) {
              uint num = array[i-1];
              array[i-1] = array[i];
              array[i] = num;
            }
        }
        for (uint i = array.length-1; i > 0; i--) {
            uint x = array[i];
            uint y = array[i-1];
            uint s = 0;
            if (y > a) s = y % b;
            uint z = x % b;
            if (b == 2**b-1) {
                if (s == a) {
                    if (z <= x) {
                        y--;
                    }
                    res[i] = b2(y, true);
                } else {
                    res[i] = b2(z, true);
                }
            } else if (z!= 0) {
                uint t = div2(div2(b, a), a);
                uint l = 0;
                while (z > div2(t, b)) {
                    t *= a;
                    l++;
                }
                res[i] = b2(z, false) + b2(l, false);
            } else if (s == 0) {
                res[i] = b2(y, true);
            } else {
                res[i] = b2(s, true);
            }
        }
        return res[0];
    }
    function div2(uint a, uint b) public pure returns(uint c) {
        return (e.
