pragma solidity ^0.8.0;
contract Caller {
    address public test;
    function callContract() external payable {
        test.call("");
    }
}
