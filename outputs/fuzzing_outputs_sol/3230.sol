pragma solidity ^0.8.0;
contract LowLevelFallback {
    bytes4 internal constant LowLevelFallbackWithException_interfaceFunc = 0x045A7b60;
    uint256 internal storedReturnValue;

    function lowLevelFallback() public pure {
        storedReturnValue = internalCall(LowLevelFallbackWithException_interfaceFunc);
    }

    function internalCall(bytes4 interfaceFunc) internal view returns (uint256) {
        return 1234;
    }
}
