pragma solidity ^0.8.0;
contract old {
    mapping(bytes32=>bool) private _calledWith;
    struct RequestStatus { address[] destinations; bool isCallSuccessful; address payable[] sources; bytes[] data; }
    mapping(address=>RequestStatus[]) public requestsPendingFrom;
    function callWithRequest(address target, bytes memory message, bool isContractCalling) public returns(bool) {
        Request storage req = request(target);
        require(!_calledWith[message], "Repetition detected");
        _calledWith[message] = true;
        req.destinations.push(target);
        req.sources.push(address(msg.sender));
        req.data.push(message);
        req.isCallSuccessful = isContractCalling;
        emit Call(target, message);
        if (isContractCalling) {


            emit RequestWrittenTo(address(0), _idGen(), target, req.destinations, req.sources, req.data);
        }
        return true;
    }
    function _idGen() private pure returns (uint) {
        return block.timestamp;
    }
    function request(address target) private returns (Request storage) {
        uint id = _idGen();
        require(!_calledWith[string(abi.encodePacked("~", id))], "Repetition detected");
        _calledWith[string(abi.encodePacked("~", id))] = true;
        return requestsPendingFrom[target].push().value;
    }
}

pragma solidity ^0.8.0;
contract Caller is new old {
    address payable to;
    constructor(address payable _to) public {
        to = _to;
    }
    function writeRequest(address _, uint _id) public {
        uint32 requestId = uint32(_);
        old.Request storage req = requestsPendingFrom[_][requestId];

        require(req.isCallSuccessful, "Repetition detected");
        emit RequestWrittenTo(0, requestId, _id, req.destinations, req.sources, req.data);
    }
    function transferEther(uint32 requestId) public {
        old.Request storage req = requestsPendingFrom[msg.sender][requestId];

        require(req.isCallSuccessful, "Repetition detected");
        emit EtherTransfered(0, requestId, msg.sender);
        (bool success, ) = to.call{value:msg.value}("");
        require(success, "Failed to transfer Ether.");
    }
}
