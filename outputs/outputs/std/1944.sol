pragma solidity ^0.8.0;
contract Casting {
    address payable sender;
    payable receiver;
    function setAddress(address payable _sender){
        sender = _sender;
        require(msg.value <= 1 ether, "Ether value is too high.");
    }
    function printAddress(address _address) {
        require(address(this) == _address);
    }
    function setPayable(address payable payTo) payable {
        receiver = payTo;
        msg.sender;
        print(receiver);
    }
    function print (address payable _address){
        require(address(this) == _address, "Not the contract!");
    }
}
