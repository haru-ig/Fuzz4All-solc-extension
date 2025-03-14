pragma solidity ^0.8.0;
contract mutationv56702
{
    function f() pure public
    {
        uint256 a = -55;
        uint256 b = -100;

        uint256 i = a + b;
        i+= a+=b;
    }
}
