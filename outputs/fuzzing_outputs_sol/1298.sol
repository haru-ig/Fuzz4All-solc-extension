pragma solidity ^0.8.0;
contract Caller {
        uint public sentValue;

        fallback()
    {
        address addr = msg.sender;
        sentValue = addr.call{value: msg.value}("");
    }
        receive()
        {
        assert(false);
        }
}
