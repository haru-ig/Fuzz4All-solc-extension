pragma solidity ^0.8.0;
contract Sender
{
    Receiver fallback;
    constructor()
        public
        payable
    {
    }

    function receive()
        external
    {
        throw;
    }
}
