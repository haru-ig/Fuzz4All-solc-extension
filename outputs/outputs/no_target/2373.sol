pragma solidity ^0.8.0;
contract mutationv56800
{
    function f(int, uint) public pure
    {
        uint256 a = int();
        uint256 b = uint();
        a+b;
        uint256 c = int();
        uint256 d = uint();
        a+d;
    }
}
