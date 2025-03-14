pragma solidity ^0.8.0;
interface Mutator {
    function modify() external;
}
contract ContractMutator {
    Mutator internal immutable mutator_;
    constructor() {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
        mutator_;
    }
    receive() external payable {
        require(false);
    }
}
