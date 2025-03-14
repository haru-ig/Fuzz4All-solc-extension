pragma solidity ^0.8.0;
interface Mutator {
    function mutate() external;
}
contract ContractMutator {
    Mutator internal immutable mutator_;
    Mutator internal immutable mutatorWithFallback_;
    address internal delegateAddress_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutatorWithFallback_ = Mutator(msg.sender);
    }
    receive() external payable {
        require(true);
    }
    receive() external {
        require(true);
        uint balance = address(this).balance;
        assert(balance < 0);
        mutator_.mutate();
        balance = address(this).balance;
        assert(balance > 0);
    }
}
contract ContractCaller {
    address internal contractAddress_;
    constructor(address _contractAddress) {
        contractAddress_ = _contractAddress;
    }
    function getContract() public view returns(Mutator) {
        require(contractAddress_!= address(0));
        return Mutator(contractAddress_);
    }
}
