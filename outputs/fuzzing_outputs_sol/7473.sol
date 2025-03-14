pragma solidity ^0.8.0;
contract Caller {

    function sendEtherToCaller() public returns (bool) {
        return msg.sender.send(address(this).balance);
    }
}
