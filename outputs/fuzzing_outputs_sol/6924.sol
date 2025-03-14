pragma solidity ^0.8.0;
import "../../mutator/Mutator.sol";
contract ContractMutator2 is Mutator {
    constructor() {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
    }
}
