pragma solidity ^0.8.0;
contract mutationv55481
{
    function f() public pure
    {
        uint256 b = 1999999999999999999999999999;
        uint256 c = 9223372036854775800;
        c^=b;
        c^=-10;
    }
}
