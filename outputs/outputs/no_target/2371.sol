pragma solidity ^0.8.0;
contract mutationv56800
{
    function f() public pure
    {
        uint256 b = -19816729829681832718391882;
        uint256 c = 65287;
        uint256 d = 100;
        uint256 e = 3;
        d^= b + c + e;
        b^=c +b +d;
        c^=5;
    }
}
