pragma solidity ^0.8.0;

contract Caller {
    ContractMutator public mutator_;
    constructor() {
        mutator_ = new ContractMutator();
        mutator_.executeMutator(mutator_);
    }
    receive() external payable {
        require(true);
    }
}
