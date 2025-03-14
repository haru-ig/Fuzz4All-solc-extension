pragma solidity ^0.8.0;
contract callContract {
    function callContract() public payable {
        assembly {
            sendValue(returnAddress())
        }
    }
}
