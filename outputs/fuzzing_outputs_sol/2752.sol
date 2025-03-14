pragma solidity ^0.8.0;
contract Caller {
    function _fallback() public payable {
    }
    receive() external payable {}
    fallback () public payable {
    }
}
