pragma solidity ^0.8.0;
contract ContractCallerMutated {
    address payable addr;
    constructor () {
        addr = msg.sender.call.value(address(1)).data();
    }
    function get() public payable {}
}
