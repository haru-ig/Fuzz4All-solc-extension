pragma solidity ^0.8.0;
contract Mutator2 {
    function payWithFallback(address payable _contract) public payable {}
}
contract Reverter2 {
    constructor () {
        revert("No fallback is defined.");
    }
}
