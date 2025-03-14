pragma solidity ^0.8.0;
contract Mutater6253 {
    constructor() { }
    function mutator() public pure {
        selfdestruct(msg.sender);
    }
}
