pragma solidity ^0.8.0;
contract Caller
{
    fallbackFunction public fallback;
    function getFallback() public view returns (fallbackFunction)
    {
        return fallback;
    }
    function setFallback(address _theFallback) internal
    {
        fallback = _theFallback;
    }
}
