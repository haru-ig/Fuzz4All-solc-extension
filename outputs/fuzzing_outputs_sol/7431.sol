pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public data;
    function set(uint8 _data) public {
        data = _data;
        emit GetData(address(this), data);
    }
    function get() public view returns (uint8) {
        return data;
    }
    event GetData(address indexed _source, uint8 _data);
}
contract Caller {
    struct State {
        address caller;
        uint8 data;
    }
    State public state;
    event DataUpdated(address indexed _caller, uint8 _data);
    function setData(uint8 _data) public {
        state.caller = msg.sender;
        state.data = _data;
        emit DataUpdated(msg.sender, _data);
    }
    function getData() public view returns (uint8) {
        return state.data;
    }
}
