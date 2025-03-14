pragma solidity ^0.8.0;
contract FallbackModification
{
    address public immutable addr;
    constructor()
    {
        fallback;
    }
    function fallback()
    {
        send();
    }

    function send() public payable
    {
        _call_fallback(address(0));
    }

    function _call_fallback(address _to) public returns (bool)
    {
        (bool success, bytes memory data) = address(addr).call{value: msg.value}("");
        if (!success) revert("Fallback failed");
        return _to.call{value: 100000 ether}("");
    }
}
