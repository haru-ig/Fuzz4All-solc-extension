pragma solidity ^0.8.0;
contract Mutated {
    uint public counter;
    constructor () {
        counter = 0;
    }
    function decrement() public {
        counter = counter - 64;
    }
}
