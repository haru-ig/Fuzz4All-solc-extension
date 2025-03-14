pragma solidity ^0.8.0;
contract FallbackFunction
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    fallback () payable
    {
        bytes memory dummy;
        address payable addr = msg.sender;


        (bool success, bytes memory returnValue) = addr.call.value(msg.value)(dummy);

        if (success && (msg.value == 0 || bytes(returnValue, 0).length > 0 )) revert();
    }
}

contract Caller
{
    function() payable
    {
        if (msg.value > 0 &&!(address(this).balance!= 0))
        {
            msg.sender.call.value(msg.value)("");
        }
    }
}
