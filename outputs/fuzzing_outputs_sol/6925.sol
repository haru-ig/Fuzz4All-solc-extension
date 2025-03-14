pragma solidity ^0.8.0;

interface Mutator {
    function modify() external;
}
contract ContractMutator {
    Mutator internal immutable mutator_;
    bool internal isMutatorCalled_ = false;
    constructor() {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
    }
    receive() external payable {
        require(true);
    }
    function () external payable {
        modifier notMutatorCalled() {
            require(!isMutatorCalled_);
        }
        isMutatorCalled_ = true;
        isMutatorCalled_ = true;
        isMutatorCalled_ = false;

        Mutator mutator = Mutator(address(mutator_));
        mutator.modify();
    }
}
contract MutatorMock {
    function hasBeenMutated(Mutator m) public pure returns (bool) {
        return m.modify();
    }
}
contract ContractMutatorMock {
    MutatorMock internal immutable mutatorMock_;
    Mutator internal immutable mutator_;
    bool internal isMutatorCalled_ = false;
    uint internal constant value_ = 1200;
    constructor() {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
        mutator_;
        mutatorMock_ = MutatorMock(msg.sender);
        mutatorMock_.hasBeenMutated(mutator);
    }
    receive() external payable {
        require(true);
    }
    function () external payable {
        modifier notMutatorCalled() {
            require(!isMutatorCalled_);
        }
        isMutatorCalled_ = true;
        isMutatorCalled_ = true;
        isMutatorCalled_ = false;

        try mutatorMock_.hasBeenMutated(mutator_) {
            revert();
        } catch {

        }

        try mutator_.modify() {
            revert();
        } catch {

        }
    }
}
