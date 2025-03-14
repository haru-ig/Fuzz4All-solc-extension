pragma solidity ^0.8.0;
import "./ContractMutator.sol";
contract ContractFallbackMutator is ContractMutator, Mutator {
    function modify() override {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
        mutator.modify2();
    }
    function modify2() override {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
        mutator.modify3();
    }
    receive() external payable {
        require(false);
    }
}
