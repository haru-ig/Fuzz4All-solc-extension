pragma solidity ^0.8.0;
contract Incrementer {
    uint public count = 0;
    uint constant initial = 1;

    constructor() {
        count = initial;
    }
    function increment() public returns (uint) {
        return ++count;
    }

}
