pragma solidity ^0.8.0;
contract Caller {
    address public test;
    function callContract() external payable returns (uint256) {
        return 200;
    }
}
