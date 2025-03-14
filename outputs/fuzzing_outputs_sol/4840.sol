pragma solidity ^0.8.0;
contract Mutator {
    function test() public payable returns(uint) {
        return 0;
    }
}
contract Reverter {
    constructor () {
        revert();
    }
}
