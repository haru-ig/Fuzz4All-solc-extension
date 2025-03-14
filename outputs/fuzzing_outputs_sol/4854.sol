pragma solidity ^0.8.0;
contract Mutator1 {
    function payWithFallback(address payable _contract) public payable {}
}
contract Reverter {
    function () external {
        revert("No fallback is defined.");
    }
}
