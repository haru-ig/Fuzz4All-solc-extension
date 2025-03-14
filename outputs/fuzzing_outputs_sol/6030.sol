pragma solidity ^0.8.0;
contract ContractWithMutatedFallback {
    function fallbackMutated(uint amount) public payable {
        require(msg.value >= amount, "No funds remaining.");
        uint value =  this.fallbackMutated(amount - msg.value);
        payable(this).transfer(value);
    }

    fallbackMutatedFallback(uint amount) public payable {}
}
contract EtherTester {
    function sendEtherToContractWithFallbackMutated(address contractAddress, uint amount) public {
        address contractInstance = address(uint160(contractAddress));
        require(contractInstance!= address(0), "Contract instance is zero. Address zero is not allowed.");
        contractInstance.call{value: amount}(new bytes(0));
        contractInstance.call{value: amount}(new bytes(0));
        require(amount == 0, "fallbackMutated not called");
    }
}

pragma solidity ^0.8.0;
contract ContractWithMutatedFallbackAndRevertOnBadAddress {
    constructor(address _receiver) {
        emit Receive(_receiver);
        require(msg.sender == _receiver, "Not correct address");
    }

    receive() external payable { emit Receive(msg.sender); }


    function fallbackMutated(uint amount) public payable {
        require(amount > 0, "Amount must be positive or zero");
    }

    fallbackMutatedFallbackAndReceive(uint amount) publicpayable {
        emit Receive(msg.sender);
    }

    fallbackMutatedFallbackAndReceiveFallbackAndBadAddress(uint amount) publicpayable {}

    fallbackMutatedInternalNotReceivingInternal(uint amount) internal public {
        emit Receive(msg.sender);
    }

    event Receive(address to);
}
