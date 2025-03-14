pragma solidity ^0.8.0;
contract Base {
    address payable public fallbackContract;
    function Base () {
        fallbackContract = payable(address(0));
    }
    function changeFallbackContractAddress(address oldFallbackAddress, address newFallbackAddress) public payable {
        fallbackContract = payable(newFallbackAddress);
        emit ChangeFallbackContractAddress(FALLBACK_ADDRESS_SLOT_NAME, fallbackContract);
    }
    event ChangeFallbackContractAddress(bytes32 slot, address newContractAddress);
}
