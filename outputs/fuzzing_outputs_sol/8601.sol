pragma solidity ^0.8.0;
contract EtherTransferReceiver {
    address payable public to;
    function receive() external payable {}
    function setTo(address payable _to) external {
        to = _to;
    }
}
