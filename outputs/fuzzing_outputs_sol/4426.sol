pragma solidity ^0.8.0;
contract Receivable {
    address public payable fallbackContract;
    constructor() {
        fallbackContract = payable(address(0));
    }
    receive() payable {
        address payable fallbackAddress;
        assembly {
            fallbackAddress := mload(add(calldataload(4), 32))
        }
        fallbackContract = fallbackAddress;
        emit ChangeFallbackContractAddress(FALLBACK_ADDRESS_SLOT_NAME, fallbackAddress);
    }
    event ChangeFallbackContractAddress(bytes32 slot, address newContractAddress);
}
