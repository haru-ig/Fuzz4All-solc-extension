pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract MyCall {
    function sendCall() public payable {

    address payable addressCaller = msg.value < 1 ether? payable(msg.sender) : address(0x0);

    (bool success, bytes memory data) = addressCaller.call.value(msg.value)("");

    (address, uint) = addressCaller.call.value(uint(msg.value))("");
    (address, uint) = addressCaller.call.value([ 1 ether ])("");
    (address, uint) = addressCaller.call.value(new address[](0)());
    (address, uint) = addressCaller.call.value(address(0));

    (address, uint) = addressCaller.call("");
    }
}
