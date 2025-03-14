pragma solidity ^0.8.0;
contract ContractMutator {
    constructor() {}
    function mutator() public payable { msg.value = 5 ether; }
    function fallback() public payable {
        address recipient = msg.sender;
        if (recipient.send(10)) { throw 0; }
    }
}
