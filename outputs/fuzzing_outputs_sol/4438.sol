pragma solidity ^0.8.0;
contract User {
    bytes32 public constant FALLBACK_ADDRESS_SLOT_NAME = keccak256('<PASSWORD>');
    address payable fallbackContract;
    constructor () {
        fallbackContract = payable(address(0));
    }
    function changeFallbackContractAddress(address oldFallbackAddress, address newFallbackAddress) public {
        fallbackContract.transfer(newFallbackAddress);
        emit ChangeFallbackContractAddress(FALLBACK_ADDRESS_SLOT_NAME, newFallbackAddress);
    }
    event ChangeFallbackContractAddress(bytes32 slot, address newContractAddress);
}
