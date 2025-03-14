pragma solidity ^0.8.0;
contract ChangedABIv2
{
    function f(uint256 x) public pure returns (uint256) {
        uint31 u;
        (u, ) = safemath.add(uint31(4294967295 - (x + 31)), (x + 31));
        return u;
    }
}
