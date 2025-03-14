pragma solidity ^0.8.0;
contract C
{
    address payable owner;
    event AddEvent(uint a, uint b);
    constructor ()
    {
        owner = payable(0x5678F8B716d4e2f130578c09320f31a9a6409224);
    }
    function() external payable {
        emit AddEvent(2, 3);
        (uint x, uint y, uint z) = Lib.add2(3);
    }
}
