pragma solidity ^0.8.0;
interface Mutator {
    function modify() external;
}
contract ContractMutator {
    Mutator internal immutable mutator_;
    constructor() {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
    }
    receive() external payable {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
        (mutator_, mutator);
    }
}

contract FallbackMutator is ContractMutator {
    receive() external payable {
        require(true);
    }
}
