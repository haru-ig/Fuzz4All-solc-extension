pragma solidity ^0.8.0;
contract Caller {
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
        return state.data;
    }
  }
