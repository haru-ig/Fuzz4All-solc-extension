pragma solidity ^0.8.0;
contract Mutator2Address {
    function payWithFallback(address payable _contract) public payable {
        uint storage s = 1;
        _contract.transfer(s);
    }
}
