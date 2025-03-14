pragma solidity ^0.8.0;
contract User {
    bytes32 public constant FALLBACK_ADDRESS_SLOT_NAME = keccak256('<PASSWORD>');
    address payable fallbackContract;
    constructor () {
        fallbackContract = payable(address(0));
        fallbackContract.transfer(fallbackContract, 1 ether);
        emit ChangeFallbackContractAddress(FALLBACK_ADDRESS_SLOT_NAME, address(fallbackContract));
    }
    function changeFallbackContractAddress(address oldFallbackAddress, address newFallbackAddress) public {
        fallbackContract = payable(newFallbackAddress);
        fallbackContract.transfer(fallbackContract, 1 ether);
        emit ChangeFallbackContractAddress(FALLBACK_ADDRESS_SLOT_NAME, fallbackContract);
    }
    event ChangeFallbackContractAddress(bytes32 slot, address newContractAddress);
