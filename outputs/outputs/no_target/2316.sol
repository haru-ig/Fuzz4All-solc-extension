pragma solidity ^0.8.0;
contract mutation047w
{
    function mod(uint64 a, uint64 m) internal pure returns (uint64) {
        a=-a;
        a += m;
        a %= m;
        return a;
    }
}
