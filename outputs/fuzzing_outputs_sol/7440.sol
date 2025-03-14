pragma solidity ^0.8.0;
contract Caller2 {
    struct State {
        address caller;
    }
    State public state;
    function setData(uint8 _data) public {
        state.caller = msg.sender;
    }
    function getData() public view returns (uint8) {
        uint8 retVal;
        (retVal) = revertAndCall2(state.caller, msg.sender, abi.encodeWithSignature("setData(uint8) payable", _data));
        return retVal;
    }
}
