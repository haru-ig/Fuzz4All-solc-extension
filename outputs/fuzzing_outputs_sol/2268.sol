pragma solidity ^0.8.0;
contract Dumb {
    (1, 2) private state;
    constructor() {
        assert(state.x == 1);
    }
    function() {
        state.state = state;
    }
}
