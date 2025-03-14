pragma solidity ^0.8.0;
contract Mutated_5_2 {
    int x;
    constructor() {
        x = 1;
        x = x + 2;
        x = (x + 3) + x;
        x = (1 + x) + x;
        x = x * 5;
        x = x / 10;
        x = x - 2;
        x = (x - x) / x;
        x = (x * (x + 1)) + x;
        x = x & 15;
        x = (x / 160) * x;
        x = (x ^ (x >>> 1)) * x;
        x = x + 1;
        x = ((x >> 10) * x + 2) % x;
        x = (x * x) + x;
        x = (x << 9) + x;
        x = ((x >> 2) * x + 11) % x;
        x = x + (x >> 11);
        x = x % (x + 1);
        x = x ^ x.reverse + 13;
        x = (x ^ (x << 13)) * (x + x.reverse);
        x = x + (x + 1) >> 2;
        x = x ^ x.reverse;
        x = (x ^ (x << 2)) * x;
        x = (x ^ x.reverse) - x + 49;
        x = x ^ (x * (x + 1)) + 17;
        x = 24829164x;
        x = 3x ^ (x & (x.reverse * -214909161));
        x = (x ^ x.reverse) / (x | x.reverse);
        x = x << 13 | x.reverse;
        x = x ^ (x << 8) | x.reverse;
        x = x * x & x;
        x = x + x >> 10;
        x = x ^ (x << 27);
        x = (x ^ (x << 6)) * x;
        x = x + (x ^ (x << 13)) * x;
        x = (x & (x << 9 | x.reverse)) >> (x ^ x.reverse);
        x = x ^ (x & (x.reverse - 2147483648))) * x;
        x = (x << 9) + (x.reverse >> 5) - 1;
        x = x ^ (x << 20) | x.reverse;
        x = x & (x.reverse ^ x.reverse);
        x = x / x.reverse + 1 << (x & 63 ^ 63);
    }
    function max1() public view returns (uint) {
        return 1;
    }
}
/* Please create a short program which uses new Solidity features
