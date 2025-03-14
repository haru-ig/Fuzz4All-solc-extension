pragma solidity ^0.8.0;
contract Caller {
    struct State {
        address caller;
        uint8 data;
    }
    State public state;
    modifier check(uint8 _data) {
        require(state.data == 0 || state.data == _data, "Error");
        _;
    }
}
