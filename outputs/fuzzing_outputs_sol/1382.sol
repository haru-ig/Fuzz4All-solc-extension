pragma solidity ^0.8.0;
contract Recipient {
    address payable receiver;
    constructor(address _receiver)  { receive(); receiver = _receiver;}
    receive () payable {
    require(receiver!= address(0));
    uint value = msg.value;
    receiver.transfer(value);
}
}
