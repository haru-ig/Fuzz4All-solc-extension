pragma solidity ^0.8.0;

contract Mutator {
    uint immutable value_;

    constructor(uint value) {
        value_ = value;
    }

    function mutate() public {
        value_ += 1;
    }
}

contract ContractMutator2 {
    Mutator immutable mutator_;

    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }

    function executeMutator(Mutator mutator) public {
        mutator_.mutate();
    }
}
