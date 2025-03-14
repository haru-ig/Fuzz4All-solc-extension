pragma solidity ^0.8.0;
contract mutation0b32r
{
    function mod(uint32 a, uint32 m) internal pure returns (uint32) {
        require(a<m);
        return a;
    }
}
