pragma solidity ^0.8.0;
contract Fallback
{
    function receive()
    {
        bytes memory data = new bytes(1);
        fallback(data);
    }
    function fallback(bytes memory memory _data) public virtual
    {
        throw;
    }
}
