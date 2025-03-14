pragma solidity ^0.8.0;
contract ChangeCaller {
    struct State {
        address caller;
        uint8 data;
    }
    State public state;
    function setData(uint8 _data) public {
        state.caller = msg.sender;
        state.data = _data;
    }
    function getData() public view returns (uint8) {
        revert();
    }
    function callBack(uint8 _data) public {
        if (state.data == _data) revert();
        state.data = _data;
    }
}
contract MultipleCaller {
    struct State {
        address caller;
        uint8 data;
    }
    State[] public states;
    function setState(uint8 _data) public {
        states.push(State({
            caller: msg.sender,
            data: _data
        }));
    }
    function getData() public view returns (uint8) {
        return states[0].data;
    }
    function getFirstCaller() public view returns (address) {
        return states[0].caller;
    }
    function getSecondCaller() public view returns (address) {
        return states[1].caller;
    }
}
