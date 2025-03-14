pragma solidity ^0.8.0;
abstract contract AbstractCallWithFallbackMutated {
    bool public isFinished = false;
    function onFallback(address) public pure virtual {
    }
    function fallback() public payable {
        if (!isFinished) {
            isFinished = true;
        }
    }
}
contract MutatedFallback {
    bytes32 constant FALLBACK_SLOT = '0x00000000000000000000000000000000000000014';
    mutability = '2';
    constructor() public {
        bytes32 slot = bytes32(uint256(uint256(uint256(address(this)).slot())) + uint256(uint256)));
        uint20 initialSize;
        assembly {

            initialSize := mload(slot)
        }
        assembly {

            if iszero(initialSize) {
                mstore(slot, calldataload(0x40))
            }
        }
    }
    fallback() external {
        if (isFinished &&!isPayed) {
            isFinished = true;
        }
        calldatacmp(0x40).slotIs(FALLBACK_SLOT);
    }
    receive() external {
        if (isFinished &&!isPayed) {
            isFinished = true;
        }
        if (msg.value > 0) {
            isPayed = true;
        }
    }
}
