pragma solidity ^0.8.0;
contract D {
    address public _to;


    constructor(address payable _to_){
        _to = _to_;
    }


    function call() public payable returns (uint) {
        simple();
        return mutated();
    }


    function take(address to_){
        _to = to_;
    }


    function simple () {
        Counter c;
        c.counter;
    }


    function mutated () public returns (uint) {
        return counter + 1;
    }
}
