pragma solidity ^0.8.0;
contract PristineFallbackSameFallback
{
    uint public fallbackValue;
    function fallback() public {
        fallbackValue = 3;
    }
}
