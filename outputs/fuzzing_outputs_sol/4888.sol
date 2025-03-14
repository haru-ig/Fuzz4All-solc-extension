pragma solidity ^0.8.0;
contract Mutator2 {
    function payWithFallback(address payable _contract2) public payable {
        _contract2.transfer(msg.value);
    }
}
