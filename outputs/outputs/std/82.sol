pragma solidity ^0.8.0;
contract MutateProgram2 {
    enum State{A,B,C}
    function _add_uint(State x) private pure returns (State) {
        return x.increment();
    }
    function add_uint(State x) public pure returns (State) {
        return _add_uint(x);
    }
}
