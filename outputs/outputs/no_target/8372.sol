pragma solidity ^0.8.0;
contract Mutator {
    address last;
    constructor() public {
        last = msg.sender;
    }
    function() public {
        last = payable(address(this));
    }
}
