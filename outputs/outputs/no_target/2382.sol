pragma solidity ^0.8.0;
contract mutationv56702
{
    event Log(uint128 a, int256 b);
    modifier alwaysFail() { uint256 b = -1; b^=1; revert(); }
    function f() public alwaysFail(){
        uint256 b;
        (b, ) = (1, -1);
    }
}
