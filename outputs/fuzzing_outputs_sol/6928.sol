pragma solidity ^0.8.0;

contract NewMutator {
    Mutator internal immutable mutator_;
    constructor() {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
        mutator_;
    }
    receive() external {
        require(true);
    }
}
