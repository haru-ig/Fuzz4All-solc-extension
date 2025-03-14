pragma solidity ^0.8.0;
contract Mutant2 {
    constructor(address x) {
        _;
    }
    function internalCall() public {
        address receiver;
        (receiver,) = msg.data.deconstruct(address(0), false);
    }
}
