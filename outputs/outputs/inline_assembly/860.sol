pragma solidity ^0.8.0;
contract Mutator {
    constructor() public {
        a = 42;
    }
    function() external {
        a = a + 1;
    }
    function() public payable {
        emit Transaction(address(this));
        a = a + 1;
    }
}
