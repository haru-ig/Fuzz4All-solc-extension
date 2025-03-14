pragma solidity ^0.8.0;
contract Caller {
    function execute() public payable {
        B b = B();
        b.receive();
    }
}
