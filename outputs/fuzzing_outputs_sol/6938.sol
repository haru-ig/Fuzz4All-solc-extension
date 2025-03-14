pragma solidity ^0.8.0;
contract ContractMutator {
    Mutator internal immutable mutator_;
    constructor() {
        contract(mutator_, true);
        mutator_.mutate();
        contract(mutator_, false);
    }
    receive() external payable {}
}
contract Mutator {

    mapping(address => bool) public usedAddresses_;
    constructor (address address_) {
        usedAddresses_[address_] = false;
    }
    function mutate() external {
        address address_ = msg.sender;
        if (usedAddresses_[address_] == false) {
            usedAddresses_[address_] = true;
            usedAddresses_[address + 1] = false;
            address_ -= 1;
            usedAddresses_[address_ + 2] = false;
            address_ -= 2;
        }
        usedAddresses_[address_] = false;
    }
}
