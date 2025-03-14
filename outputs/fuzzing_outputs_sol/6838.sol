pragma solidity ^0.8.0;
contract Caller {
    uint public received;
    address payable receiver;
    function call() public payable {
        receiver.transfer(1 ether);
        received += 1 ether;
    }
    function setReceiver(address _receiver) public {
        receiver = payable(_receiver);
        require(msg.sender == receiver, "not authorized");
    }
    function setValue(uint _value) public {
        value = _value;
        require(msg.value == value, "not a purchase");
    }
}
pragma solidity >=0.8.0 <0.9.0;
contract CallerFallback {
    function fallback() public payable {
        revert("Expected transfer, received fallback");
    }
}
