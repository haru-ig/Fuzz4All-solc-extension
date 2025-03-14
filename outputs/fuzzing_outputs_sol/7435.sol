pragma solidity ^0.8.0;
contract MutatedCaller {
    constructor(uint32 _data) {}
    struct State {
        uint8 data;
    }
    State public state;
    function setData(uint8 _data) public {
        state.data = _data;
    }
    function getData() public view returns (uint8) {
        return state.data;
    }
}
