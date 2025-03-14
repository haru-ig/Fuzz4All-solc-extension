pragma solidity ^0.8.0;
interface Mutator {
    function mutate() external;
}
contract ContractMutator {
    Mutator public immutable mutator_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }
    function executeMutator(Mutator mutator) external {
        mutator_.mutate();
    }
    receive() external payable {
        require(true);
    }
}
