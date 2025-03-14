pragma solidity ^0.8.0;
contract Mutator {
    fallback mutator() public {
    }
}
contract Reverter {
    constructor () {
        revert("No fallback is defined.");
    }
}
