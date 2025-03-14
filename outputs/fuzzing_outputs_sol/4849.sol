pragma solidity ^0.8.0;
contract NoFallback {
    function payWithFallback(address payable _contract) pure public payable {
        emit Transfer(_contract, msg.sender);
    }
}
