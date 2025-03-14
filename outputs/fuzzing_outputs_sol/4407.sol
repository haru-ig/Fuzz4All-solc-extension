pragma solidity ^0.8.0;
contract Mutated {
    bool public value;
    constructor(){
        this.value = true;
    }
    function set() public{
        value = true;
    }
    function revert() public{
        revert();
    }
}
