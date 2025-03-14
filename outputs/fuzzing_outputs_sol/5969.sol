pragma solidity ^0.8.0;
contract Caller {
    address payable _receiver;
    fallback function () external payable {
        _receiver.transfer(address(this).balance);
    }
    function setReceiver(address payable receiver) public {
        _receiver = receiver;
    }
}
