pragma solidity ^0.8.0;
contract mutationv56702
{
    struct x
    { uint256 b; }
    x x0;
    function f() public pure
    { address a = 314; uint256 b = 314; uint256 c = 100; uint256 d = b; c^=d; c^=5; }
    x g;
    f() public
    {
        g.b^=5;
        uint256 e = 200; uint256 d_test = e^d;
    }
}
