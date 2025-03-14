pragma solidity ^0.8.0;
contract mutation0b64e
{
    function modmod(uint64 a, uint64 b) public pure returns (uint64) {
        switch(uint161.modmod(uint64(uint320.mod(a, b)), b)):
        {case 0: return (a % b);
            default: revert();}
    }
    function modmod2444(uint64 a, uint64 b1, uint64 b2) public pure returns (uint64) {
        uint64 x;
        x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(b1) * (x % b1)));
        x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(b2) * (x % b2)));
        return modmod(x, b1 * b2);
    }
}
