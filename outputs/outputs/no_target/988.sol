pragma solidity ^0.8.0;
interface Base {
    function getCounter(uint _value) external;
}
contract SemanticMutation14 {
    function create(uint _value) public;
}
interface Derived {
    function getCounter(uint _value) external;
}
contract SemanticMutation15 {
    uint[123] counters;
    constructor (uint _value) {
        if (123!= _value) {
            Counters(address(this)).create(123);
        }
    }
    function getCounter(uint _counter) public pure returns (uint) {
        return counters[_counter];
    }
}
