pragma solidity ^0.8.0;
contract SinkMutatingCaller{
    bytes32 constant SINK = keccak256("");

    constructor(address _caller) {
        _caller.call{value: msg.value}("");
    }

    receive() external payable {}

    function _call(bytes memory _callData, bytes calldata _sig) internal returns (bytes memory) {
        return _caller._call(_callData, _sig);
    }
}
