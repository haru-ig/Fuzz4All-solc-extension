pragma solidity ^0.8.0;
contract FallbackFunction {

    function fallback() public payable {
        address caller = msg.sender;
    }
}
