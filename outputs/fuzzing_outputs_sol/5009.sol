pragma solidity ^0.8.0;

contract Caller is Fallback {
    bytes32 state;

    constructor() {
        address _addr = msg.sender;
        _addr.call{value: 0}("");

        state = 0;
    }
    modifier state0 { require(uint256(state) < 1); state = 1; _; }
    function writeToStorage() public pure returns(uint256) { writeBack("The contract was modified!"); return 1; }

    function callAndChangeState() public nonReentrant returns(uint256) { state = 2; writeBack("The contract was changed."); return 2; }
}
contract Caller11 is Fallback {
    bytes32 public state;

    constructor() {
        address _addr0 = msg.sender;
        address _addr = _addr0;
        _addr.call{value: 0}("");

        state = 3;
    }
    modifier state8 { require(uint256(state) < 4); state = 4; _; }

    function callSameContractAndWriteToStorage() public pure returns(uint256) { writeBack("The contract was changed to write to storage."); return 4; }
}
