pragma solidity ^0.8.0;
contract Caller {
    address payable public payee;
    modifier isPayablePayeeCheck() {
        require(msg.value >= 100 ether, "Payable sender does not have sufficient Ether.");
        _;
    }
    fallback () payable isPayablePayeeCheck() {}
}
address payable receiver = address(new Caller());
receiver.send(0.5 ether);
