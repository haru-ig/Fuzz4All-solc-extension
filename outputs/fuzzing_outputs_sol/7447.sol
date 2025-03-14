pragma solidity ^0.8.0;
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
