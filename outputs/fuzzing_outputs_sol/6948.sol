pragma solidity ^0.8.0;
contract ContractMutator {
    Mutator public immutable mutator_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }
    function executeMutator(Mutator mutator) external {
        mutator.mutate().mutate();
    }
    receive() external payable {
        require(true);
    }
}
contract Mutator {
    function mutate() public {
        throw "revert";
    }
}
contract ContractMutator {
    Mutator public immutable mutator_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }
}
contract ContractMutator {
    Mutator public immutable mutator_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }
    receive() external {
        require(true);
    }
}


pragma solidity ^0.8.0;
ContractMutator public immutable mutator_;
contract ContractMutator {
    Mutator public immutable mutator_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }
    function executeMutator(Mutator mutator) public  {
        for (uint256 i = 0; i < 100; ++i) {
            mutator.mutate().mutate().mutate().mutate();
        }
    }
}
contract Mutator {
    function mutate() public {
        throw "revert";
    }
}
contract Caller {
    Mutator public immutable mutator_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }
    function executeMutator(Mutator mutator) public {
        mutator.mutate();
    }
    receive() external payable {
        require(true);
    }
}
contract ContractMutator {
    Mutator public immutable mutator_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }
    function executeMutator(Mutator mutator) public {
        mutator.mutate();
    }
}
contract ContractMutator {
    Mutator public immutable mutator_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
    }
    receive() external payable {
        require(true);
    }
}
