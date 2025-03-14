pragma solidity ^0.8.0;
contract Mutator3 {
    function payWithFallback(address payable _contract) public payable fallback {
        _contract.transfer(msg.value);
    }
}


    function sendEther() public payable {
        msg.sender.transfer(msg.value);
    }

    function sendWithFallback() public payable fallback {
        msg.sender.transfer(msg.value);
    }
}
