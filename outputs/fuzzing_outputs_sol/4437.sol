pragma solidity ^0.8.0;
contract Caller {
    bytes32 public constant FALLBACK_CALLER_ADDRESS_SLOT_NAME = keccak256('<PASSWORD>');
    address fallbackCaller;
    bytes32 public constant FALLBACK_CALL_ADDRESS_SLOT_NAME = keccak256('fallbackCallAddress');
    function call(address contractAddress, bytes memory callBytes) public payable {
        fallbackCaller = fallback(contractAddress, callBytes, FALLBACK_CALL_ADDRESS_SLOT_NAME);
    }
    function changeFallbackCaller(address oldFallbackCaller, address newFallbackCaller) public {
        fallbackCaller = address(newFallbackCaller);
        emit ChangeFallbackCaller(FALLBACK_CALL_ADDRESS_SLOT_NAME, fallbackCaller);
    }
    event ChangeFallbackCaller(bytes32 slot, address newContractAddress);
}
