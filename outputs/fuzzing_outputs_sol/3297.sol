pragma solidity ^0.8.0;
contract Caller is SomeContract {

    uint public x;
    constructor() {
        x = 1;
    }
    receive() external payable {
        x = 2;
    }
    function callContract() public {
        SomeContract(address(this)).simpleContract();
    }
}
