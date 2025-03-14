pragma solidity ^0.8.0;
contract Caller{
    function callFallback() public {
        MutatedFallbackExample _fallbackExample = MutatedFallbackExample(address(0));

        _fallbackExample._fallback(abi.encodeWithSignature("fallback()"));
    }
}
