pragma solidity ^0.8.0;
contract PristineFallbackMutatedFallback
{
    uint public fallbackValue;
    function mutation() public {
        fallbackValue = 3;
    }
}
