pragma solidity ^0.8.0;
contract FallbackCaller<C> {
    function receiveEth() payable external {
    }

    function callMyContract() public C {
    }
    receiveEth();
    receiveEth();
    receiveEth();
}

pragma solidity ^0.8.0;
contract OldCaller {
}

pragma solidity ^0.8.0;
contract Caller is User, FallbackCaller<OldCaller> {
    constructor (address payable fallback_) {
        fallbackContract = fallback_;
    }
    function() external payable {
    }
    function changeFallbackContractAddress(address oldFallbackAddress, address newFallbackAddress) public {
        fallbackContract = payable(newFallbackAddress);
        emit ChangeFallbackContractAddress(FALLBACK_ADDRESS_SLOT_NAME, fallbackContract);
    }
    event ChangeFallbackContractAddress(bytes32 slot, address newContractAddress);
}
