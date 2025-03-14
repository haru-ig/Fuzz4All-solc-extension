pragma solidity ^0.8.0;
contract Mutator {
    function payWithFallback(address payable _contract) public {
        _contract.transfer(address(this).balance);
    }
}
contract Reverter {
    constructor () {
        revert("No fallback is defined.");
    }
}
