pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract nine
{
    function __() external pure { }
    function f() pure public returns (uint)
    {
        uint x = 18446744073709551615 + 1;
        return x - 1;
    }
}
