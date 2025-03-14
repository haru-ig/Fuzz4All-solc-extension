pragma solidity ^0.8.0;
contract FallbackUser {
    bytes32 public constant FALLBACK_ADDRESS_SLOT_NAME = keccak256('fallbackAddress');
    address payable fallbackContract;
    constructor () {
        fallbackContract = payable(address(0));
        emit ChangeFallbackContractAddress(FALLBACK_ADDRESS_SLOT_NAME, address(fallbackContract));
    }
    function changeFallbackContractAddress(address oldFallbackAddress, address newFallbackAddress) public {
        fallbackContract = payable(newFallbackAddress);
        emit ChangeFallbackContractAddress(FALLBACK_ADDRESS_SLOT_NAME, fallbackContract);
    }
    event ChangeFallbackContractAddress(bytes32 slot, address newContractAddress);
}
fallbackContract = new FallbackUser();




contract Caller {
    fallbackContract = new FallbackUser();
    fallbackContract.changeFallbackContractAddress(fallbackContract, fallbackContract);
}

contract Caller {
    fallbackContract = User.fallbackContract;
    fallbackContract.changeFallbackContractAddress(fallbackContract, fallbackContract);    }
