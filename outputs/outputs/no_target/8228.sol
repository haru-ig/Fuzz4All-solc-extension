pragma solidity ^0.8.0;
contract Mutated {
    uint public x;
    function mutated() {

        x = 0;
        x = x + 5;
        x = x % 5;
    }
}
