pragma solidity ^0.8.0;
contract Caller is Test {
    function () external payable {
        payable(msg.sender).transfer(msg.value);
    }
    receive () external payable {
        emit EtherArrived(address(this));
    }
    function emitEtherEvent() external {
        emit EtherArrived(address(this));
    }
}
