pragma solidity ^0.8.0;
contract FallbackFunction {
    bytes32 public constant FALLBACK_ADDRESS_SLOT_NAME = keccak256('fallbackAddressSlot');
    event UserChangeFallbackFunctionAddress(address previousFallbackFunctionAddress, address newFallbackFunctionAddress);
    address public previousFallbackFunctionAddress;
    constructor () {
        previousFallbackFunctionAddress = address(uint128(address(this)));
        emit ChangeFallbackFunctionAddress(previousFallbackFunctionAddress, address(address(fallback)));

    }
    function changeFallbackFunctionAddress(address oldFallbackFunctionAddress, address newFallbackFunctionAddress) public {
        previousFallbackFunctionAddress = newFallbackFunctionAddress;
        emit ChangeFallbackFunctionAddress(previousFallbackFunctionAddress, newFallbackFunctionAddress);
    }
    event ChangeFallbackFunctionAddress(address previousFallbackFunctionAddress, address newFallbackFunctionAddress);
}
