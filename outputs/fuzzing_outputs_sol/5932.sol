pragma solidity ^0.8.0;
contract Mutator {
    uint public num;
    constructor() {
        num = 1;
    }
    function increase() public payable {
        num = num + 1;
    }
}
