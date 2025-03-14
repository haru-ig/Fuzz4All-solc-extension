pragma solidity ^0.8.0;
contract Mutator3 is Reverter2, Mutator2 {
    function payWithFallback(address payable _contract) public payable {}

}
