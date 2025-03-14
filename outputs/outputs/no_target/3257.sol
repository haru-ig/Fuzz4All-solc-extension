pragma solidity ^0.8.0;
contract nine2
{
    function __() external pure { }
    function f() pure public returns (uint256 d, uint i)
    {
        uint256 x = uint(0x1) << 256 + uint(13) ;
        d = x * 512;
        i = x & 65535;
        return;
    }
}
