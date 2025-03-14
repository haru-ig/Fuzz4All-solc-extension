pragma solidity ^0.8.0;
contract MutatingMutations {
    constructor() { }

    function inc() public {
        array ++;
    }

    function dec() public pure {
        array --;
    }
}
