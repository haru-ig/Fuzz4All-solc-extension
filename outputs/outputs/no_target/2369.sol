pragma solidity ^0.8.0;
contract mutationv56700
{
    function f() public pure
    {
        uint256 b = 314;
        uint256 c = 100;
        c^=b + c;
        c^=5;
    }
}
