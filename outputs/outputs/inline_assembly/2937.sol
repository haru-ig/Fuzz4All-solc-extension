pragma solidity ^0.8.0;
contract C {
    struct S {
        address a;
    }
    struct State {
        uint x;
    }
    mapping(uint => State storage) states;
    function setX(uint _stateIndex, uint _x) public {
        states[_stateIndex].x = _x;
    }
    function getX(uint _stateIndex) public view returns (uint) {
        return states[_stateIndex].x;
    }
}
