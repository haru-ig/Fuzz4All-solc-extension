pragma solidity ^0.8.0;
contract Caller {
    address public test;
    function callContract() public payable {
        test.call("");
    }
    receive() external payable {}
}
