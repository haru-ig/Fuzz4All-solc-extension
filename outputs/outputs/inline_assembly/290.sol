pragma solidity ^0.8.0;
contract E10
{
    uint a;
    function internalFunction (uint e) internal pure{
        a = a ^ e;
    }
}
