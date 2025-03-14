pragma solidity ^0.8.0;
import "./ContractMutator.sol";
contract ContractMutated extends Mutator {
    constructor() {
        ContractMutator mutator = ContractMutator();
        mutator.modify();
    }
}
