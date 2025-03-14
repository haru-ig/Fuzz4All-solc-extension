pragma solidity ^0.8.0;
contract Caller {
    function sendEtherToCaller() public payable returns (bool) {
        bool success;
        (success,) = msg.sender.call{ value: msg.value }("");
        return success;
    }
}
contract EtherFallback {
    receive () external payable {}
}
