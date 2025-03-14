pragma solidity ^0.8.0;
contract Caller {
    struct State {
        address callerA;
        uint256 i;
    }
    State public state;
    function setCallerA(uint256 _i) public {
        state.callerA = msg.sender;
        state.i = _i;
    }
    function getData() public view returns (uint256) {
        return state.i;
    }
    function callBack() public {
        if (state.callerA == msg.sender) return;
        msg.sender.call{value: 1000**2}(abi.encodeWithSignature("getDataX()"));
    }
    function callBackWithEther() public {
        uint256 c = getDataX();
        if (c < 5) return;
        state.callerA.call{value: 1000**2}(abi.encodeWithSignature("callBack()"));
    }
    function getDataX() public view returns (uint256) {
        uint256 i = state.i;
        uint256 c = 0;
        while (i!= 0) {
            i >>= 2;
            c++;
        }
        return c == 5? 0 : state.i;
    }
}
