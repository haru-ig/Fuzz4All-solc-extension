pragma solidity ^0.8.0;
contract Mutator1 {
    function payWithFallback(address payable _contract) public payable {
        _contract.transfer(msg.value);
    }
}
contract Reverter1 {
    address payable _contract;
    constructor () {
        _contract = payable(new Mutator2());
        _contract.transfer(msg.value);
    }
}
