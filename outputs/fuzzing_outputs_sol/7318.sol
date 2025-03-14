pragma solidity ^0.8.0;
contract Caller {
    function call(uint amount, address to, bytes memory data) public payable {
        emit LowLevelCallCreated(amount, to, data);
        LowLevelContract(to).doLowLevelCall(amount, to, data);
        emit LowLevelCallCompleted(amount, to, data);
    }

    event LowLevelCallCreated(uint amount, address to, bytes memory data);
    event LowLevelCallCompleted(uint amount, address to, bytes memory data);
}
