pragma solidity ^0.8.0;
contract A {
    constructor () {
        if (address(this) == 0x0) {

            address adminAddress = payable(msg.sender);
            selfdestruct(adminAddress);
        }
    }
    function func() public {
        selfdestruct(payable(msg.Sender));
    }
}
