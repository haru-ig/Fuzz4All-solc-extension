pragma solidity ^0.8.0;
contract Math {
    function pow2(uint64 a) public pure returns (uint64) {
        require(a >= 0, "Math.pow2");
        uint64 x = 2 ** a;
        x *= x;
        return x;
    }








    function pow2(uint64 x, uint64 n) public pure returns (uint64)
    {
        x--;
        uint64 c = 1;
        while(n > 0) {
            if(--n == 0) c *= x;
            x *= x;
        }
        return c;
    }
    function mod(uint64 x, uint64 y) public pure returns (uint64) {
        uint64 r = x % y;
        return r < 0? r + y : r;
    }
}
