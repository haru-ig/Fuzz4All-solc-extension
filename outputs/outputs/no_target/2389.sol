pragma solidity ^0.8.0;
contract mutationv56702
{
    function f() public pure { uint256 b = 2134; uint256 c = 123; uint256 d = b; uint256 e = c; c^=5; e^=d; }
}
