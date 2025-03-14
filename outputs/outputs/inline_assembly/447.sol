pragma solidity ^0.8.0;
contract EquivalentM16 {
    constructor () public {
        emit MyEvent(msg.sender, "", "");
    }
    event MyEvent(address value1, string value2, string value3);
}
address payable myAddress;
address payable someOtherAddress = payable(msg.sender);
myAddress.transfer(1 ether);
