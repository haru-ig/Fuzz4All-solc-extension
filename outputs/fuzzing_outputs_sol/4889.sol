pragma solidity ^0.8.0;
contract Mutator3 is Mutator2 {
    function payWithFallback(address payable _contract) public payable {
        _contract.transfer(msg.value);
    }

    function fallback() public payable {




        _contract.transfer(msg.value);
    }
}
