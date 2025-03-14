pragma solidity ^0.8.0;
contract E9
{
    uint a=1,b=2;
    function add_external () public pure{
        a = a ^ b;
        b = a ^ b;
        emit LogEvent(a, b);
    }


    event LogEvent (uint a, uint b);
}
