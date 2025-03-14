pragma solidity ^0.8.0;
contract Mutator2 {
    fallback() external payable {}
}
contract Reverter2 {
    constructor () {
        revert("No fallback is defined.");
    }
}
