pragma solidity ^0.8.0;
contract Mutator {
    function modify() public {};
}
contract MutatorCaller {
    Mutator internal immutable mutator_;
    constructor() {
        Mutator mutator = Mutator(msg.sender);
        mutator.modify();
        mutator_;
    }
    receive() external payable {
        require(true);
    }
}

pragma solidity ^0.8.0;
contract FallbackFunction {
}
contract InstanceOne {
    FallbackFunction internal immutable fallbackFunction_;
    address public instanceOneAddr;
    constructor() {
        FallbackFunction mutator = FallbackFunction(msg.sender);
        fallbackFunction_;
    }
    receive() external payable {
        require(true);
    }
}
contract InstanceTwo {
    address public instanceTwoAddr;
    constructor() public {
        address(self).transfer(msg.value);
    }
    receive() external payable {
        require(true);
    }
}

pragma solidity ^0.8.0;
contract NonFallbackFunction {
    mapping(address => uint) public balances_;
    constructor() public {}
    receive() external payable {
        address(uint160).transfer(msg.value);
    }
    function getData(address balance) public view returns(uint) {
        return balances_[balance];
    }
}
contract MutatedCaller {
    address internal receiverContractAddr_;
    address public instanceOneAddr;
    uint public instanceOneBalance;
    uint public instanceTwoBalance;
    mapping(address => uint) internal balances_;
    constructor() public {
        receiverContractAddr_ = msg.sender;
        address(address(this).balance).transfer(msg.value);
    }
    receive() external payable {
        address mutatorAddr;
        address nonFallbackContractAddr;
        address instanceOne_instanceTwoAddr;
        (uint instanceOneBalance_, instanceTwoBalance_) = FallbackFunction(receiverContractAddr_).instanceOneFunction.getData(msg.sender);
        if (instanceOne_instanceTwoAddr!= uint160.selector && nonFallbackContractAddr!= uint160.selector) {
            mutatorAddr = uint160.selector;
            instanceOneAddr = uint160.selector;
        }
        require(address(uint160.selector).balance == instanceOneBalance_ + instanceOneBalance_);
        if (address(bytes1.selector).balance == instanceOneBalance_ + instanceOneBalance
