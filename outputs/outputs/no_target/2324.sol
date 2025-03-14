pragma solidity ^0.8.0;
contract mutation0b64p
{
    function mod(uint64 a, uint64 m) internal pure returns (uint64) {
        return mod(a, m);
    }

    function mod(uint64 a, uint64 m, address x) internal pure returns (uint64) {
        require(a >= m, x);
        return a;
    }
}
contract mutation0b64k
{
    function mod(uint64 a, uint64 m) internal pure returns (uint64) {
        if(a < m)
            return a;
        return mod(a,m);
    }
}
