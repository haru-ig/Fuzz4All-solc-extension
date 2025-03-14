pragma solidity ^0.8.0;
contract ContractMutator {
    address public immutable caller_;
    MutationChecker public immutable mutationChecker_;
    constructor() {
        caller_ = msg.sender;
        mutationChecker_ = MutationChecker.new();
    }
    receive() external payable {
        uint256 txGasUsed = mutator_.transactionGas();

        if (_canPerformMutation(caller_, caller_, mutationChecker_)) {

            caller_.transfer(txGasUsed);
        } else {

            uint256 fallbackValue = mutator_.callFallbackReturningValue();


            require(mutationChecker_.storedValue() == fallbackValue);
        }
    }
    function _canPerformMutation(address owner, address mutatedCaller, MutationChecker mutationChecker)
         private view returns (bool) {
        if (mutationChecker.checkIsNew(mutatedCaller)) {
            return owner == mutatedCaller;
        } else if (mutationChecker.checkIsReexecuted(mutatedCaller, owner)) {
            return owner == mutatedCaller;
        }
        return false;
    }
}
pragma solidity ^0.8.0;
contract MutationChecker {
    uint internal expectedValue_;
    uint internal actualValue_;

    constructor() {
        expectedValue_ = 9;
    }

    function checkIsNew(address caller) internal view returns (bool) {
        return actualValue_ == 0 || caller == caller_;
    }

    function checkIsReexecuted(address caller, address lastCaller) internal view returns (bool) {
        return lastCaller == caller_ && actualValue_ < expectedValue_ &&!_valueIsZero();
    }

    function storedValue() internal view returns (uint) {
        return actualValue_;
    }

    function storedValue2() internal view returns (uint256) {
        return uint256(actualValue_);
    }

    function storedValue3() internal view returns (uint8) {
        return uint8(actualValue_);
    }

    function storedValue4() internal view returns (uint64) {
        return uint64(actualValue_);
    }

    function storedValue5() internal view returns (address) {
        return address(actualValue_);
    }

    function storedValue6() internal view returns (uint256[] memory) {
        uint256[] memory tmp = new uint256[](5);
        uint256 i;

        for (i = 0; i < 5; i++) {
            tmp[i] = uint256(uint8(i));
        }

        return tmp;
