pragma solidity ^0.8.0;
contract Mutated {
    struct State {
        uint[] memory array;
        uint total;
    }
    event NewState(uint[] memory, uint total);

    function mutate(State memory _oldState, State memory _newState, uint _maxIndex) public {
        uint[] memory newArray;
        for (uint i = 0; i < _maxIndex; i++) {
            newArray[i] = _oldState.array[i];
        }
        _newState = State(newArray, _oldState.total);
        emit NewState(_newState.array, _newState.total);
    }
}
