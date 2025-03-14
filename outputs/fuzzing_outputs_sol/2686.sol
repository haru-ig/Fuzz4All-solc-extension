pragma solidity ^0.8.0;
contract InheritanceNoMutate {
    uint public value;
    constructor (uint _value1) {
        value = _value1;
    }
    function call() public {
        value = value + 1;
    }
}
