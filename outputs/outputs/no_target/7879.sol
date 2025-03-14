pragma solidity ^0.8.0;
contract TestMutator {

    constructor() {}
    function set(uint40 _value) public returns (uint40) {
        uint40 x = uint40(uint160(_value));
        return x;
    }
    function mutate() public returns (uint40) {
        uint40 _value = value;
        value = uint40(uint160(uint40(_value + 1)));
        return _value;
    }
}
