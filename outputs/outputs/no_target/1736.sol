pragma solidity ^0.8.0;
contract Mutate0081 {
    constructor (uint _n) public {
        uint x;
        if (true) {
            x = iDiv2(uint(uint(_n)/2));
            x = iMod2(uint(uint(_n)/2));
            x = mul2(uint(uint(_n)/2));
        }
        uint y = x;
        y = iDiv(uint(x/y));
        y = iMod(uint(x/y));
        y = mul(uint(x/y));
    }
    function iDiv (uint x) internal pure returns(uint) {
        require(x > 0);
        uint z = 1;
        while (z < x) {
            z = z << 1;
        }
        return z;
    }
    function iDiv2 (uint x) internal pure returns(uint) {
        require(x > 0);
        uint z = x / 2;
        while (z < x / 2) {
            z = z + z;
        }
        return z;
    }
    function iMod (uint x) internal pure returns(uint) {
        require(x > 0);
        return x % 2;
    }
    function iMod2 (uint x) internal pure returns(uint) {
        require(x > 0);
        return uint(x >> 1) % 2;
    }
    function mul (uint x) internal pure returns(uint) {
        uint q = 1;
        while (x >= q) {
            q = q * 2;
        }
        return q;
    }
    function mul2 (uint x) internal pure returns(uint) {
        uint q = x / 2;
        while (x >= q*2) {
            q = q* 2;
            x = x/2;
        }
        return x;
    }
}
