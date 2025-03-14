pragma solidity ^0.8.0;
contract mutationv56702
{
    function f() public pure
    {
        uint256 b = 314;
        uint256 c = 100;
        uint256 d = b;
        b^=c;
        b^=d;
        b^=5;
    }
}
