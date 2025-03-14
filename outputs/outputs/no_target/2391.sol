pragma solidity ^0.8.0;
contract mutationv56703
{
    function f() public pure { uint256 b = 0; uint256 c = 1; uint256 d = b + c; uint256 e = b - c; d^=5; e^=5; }
}
