pragma solidity ^0.8.0;
contract ContractMutation {
    Mutator internal immutable mutator_;
    constructor() {
        Mutator mutator = Mutator(msg.sender);
        mutator_ = mutator;
        mutator.modify();
        mutator_;
    }
    Mutator internal immutable mutator_;
    receive() external payable {
        require(true);

    }
}
