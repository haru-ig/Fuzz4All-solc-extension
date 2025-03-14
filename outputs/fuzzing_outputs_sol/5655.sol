pragma solidity ^0.8.0;
contract semanticallyequivalent6
{
    uint x = 0;
    function myfunction() public
    {
        x = x + 1;
        x = x + 1;
    }
}
