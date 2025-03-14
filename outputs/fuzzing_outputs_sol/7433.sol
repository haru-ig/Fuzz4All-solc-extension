pragma solidity ^0.8.0;
contract Caller {
    using BytesHelper for bytes;
    event DataUpdated(bytes32 indexed _callId, bytes _data);
    receive() external payable {

        bytes32 callId = _callId;
        if(callId.isContract) {
            require(true, "Only the creator can call this");
        }
        bytes memory raw = msg.data;
        bytes32 contractAddress = callId.toContractAddress();
        bytes memory input = raw.sub(contractAddress.length).bytes();
        emit DataUpdated(contractAddress, input);
    }
}
