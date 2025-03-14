pragma solidity ^0.8.0;
contract ContractMutated {
    constructor() {
        Mutator mutator = Mutator(msg.sender);
        mutator.mutate();
        require(true);
    }
    receive() external payable {
        require(true);
    }
}
