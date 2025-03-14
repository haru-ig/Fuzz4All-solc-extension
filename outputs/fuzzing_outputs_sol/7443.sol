pragma solidity ^0.8.0;
contract Mutated {
    modifier onlyCaller() {

        require(msg.sender == state.caller);

        state.caller = msg.sender;
        _;
    }
    State public state;
    event SetData(uint8 indexed _data);
    constructor(State memory _state) public {
        state = _state;
    }
    function setData(uint8 _data) public {

        require(msg.sender == state.caller);

        state.data = _data;
        emit SetData(_data);
    }
    function getData() public view returns (uint8) {
        return state.data;
    }
}
