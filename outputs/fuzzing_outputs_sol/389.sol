pragma solidity ^0.8.0;
contract ContractWithFallbackModifier9 {
    function foo() public virtual {}
}


pragma solidity ^0.8.0;
contract ContractWithFallbackModifier10 {
    function foo() public payable {
    }
    receive () payable {
        foo();
    }
}

pragma solidity ^0.8.0;
contract ContractWithFallbackModifier11 {
    function foo(address _receiverAddress, address _amountAddress) public payable {
        address payable receiver = receive();
        receiver.transfer(_amountAddress.balance);
        address payable amountTo = payable(_receiverAddress);
        amountTo.transfer(_amountAddress.balance);
    }
}
