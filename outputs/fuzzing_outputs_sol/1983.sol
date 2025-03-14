pragma solidity ^0.8.0;
contract Restricted {
    event MyEvent(bytes32 indexed eventKey, bytes32 indexed _eventId,
    address _sender, address indexed _target);
    event MyEvent2(bytes32 indexed eventKey, address indexed _sender,
    address _target);
    function restrictedMutatedFunction(address _target) public {

        emit MyEvent2(msg.sender, _target, address(this));
    }
}
