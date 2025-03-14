pragma solidity ^0.8.0;
contract mutation0b64c
{
    function mod(uint64 a, uint64 m) internal pure returns (uint64) {
        return 2**m-mod((a+m)>>1,m);
    }
}
