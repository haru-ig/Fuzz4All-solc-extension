pragma solidity ^0.8.0;
contract Mutated {
    uint internal x = 1;
    function mutate() public pure returns (uint) {
        x += 2;
        x -= 3;
        x *= 4;
        x /= 5;
        x %= 6;
        x <<= 7;
        ++x;
        x >>= 8;
        x &= 9;
        x ^= 10;
        x |= 11;
        x = -(x+1) ** x;
        x--;
        x ^= (x%2) * (x%2) * (x%2) * (x%2) + (x%2) * (x%2) * (x%2) * (x%2) * (x%2) + x * (x%2) + (x%2) + x * (x%2) - (x%2);
        x += ~x;
        x -= ((x) % (x & (x >> 1) + 1)) + ~((x - (x >> 1)) / (x & (x >> 1) + 1));
        x -= (x >> 1);
        x -= (x & 0x55);
        x -= (x << 1 & 0x5a) * (0x5c >> 6);
        x -= (x << 2 & 0x66) * (0x6f >> 11);
        x -= (x << 4 & 0x80) * (0x80 >> 15);
        x -= x << 8;
        x -= x >> 8 & 0xff;
        x -= x & 0xffff;
        x -= x >> 16 & 0xffff;
        return x << (x & (max-1)) >> (max-x);
    }
}
