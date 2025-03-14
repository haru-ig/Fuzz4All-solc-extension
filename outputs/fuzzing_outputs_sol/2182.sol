pragma solidity ^0.8.0;
contract Mutater334_2 is Mutater334 {
    constructor() {
        super(msg.sender);
    }
    function mutate() {
        msg.sender;
        super;
        transfer(address(this), 1 ether);
    }
}
