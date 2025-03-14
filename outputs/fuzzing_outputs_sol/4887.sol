pragma solidity ^0.8.0;
contract Mutator3 {
    function payWithFallback(address payable _contract) public payable {
        _contract.transfer(100);
    }
}
