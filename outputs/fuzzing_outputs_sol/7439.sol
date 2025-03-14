pragma solidity ^0.8.0;
contract Caller {
    State public state;
    constructor() {
        state.caller = 0x04539f0806fe97a99371889e6c67f81ab2be05fa;
        state.data = 0x40;
    }
    function setData(uint8 _data) public {
        state.caller = msg.sender;
        state.data = _data;
    }
    function getData() public view returns (uint8) {
        return state.data;
    }
  }

pragma solidity ^0.8.0;
contract Caller {
    State public state;
    contract C {
        function setData(uint8 _data) public {
            state.caller = msg.sender;
            state.data = _data;
        }
        function getData() public view returns (uint8) {
            return state.data;
        }
      }
    constructor() {
        C(state).setData(0x21);
    }
    function setData(uint8 _data) public {
        state.caller = msg.sender;
        state.data = _data;
    }
    function getData() public view returns (uint8) {
        return state.data;
    }
  }
