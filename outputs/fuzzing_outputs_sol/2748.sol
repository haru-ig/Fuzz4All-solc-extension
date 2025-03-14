pragma solidity ^0.8.0;
contract Caller {
    payable fallback;

    function _fallback() public payable {
        fallback = msg.sender;
    }
}
