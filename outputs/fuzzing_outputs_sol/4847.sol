pragma solidity ^0.8.0;
contract Mutator1 {
    function payWithFallback(address payable _contract) public payable {}
}
contract Reverter1 {
    constructor () {
        revert("No fallback is defined.");
    }
}
