pragma solidity ^0.8.0;
contract mutationv56702
{
    function f() public pure { uint256 b = 0; uint256 c = 0; uint256 d = b; c^=d; }
}
