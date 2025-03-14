pragma solidity ^0.8.0;
contract MutatedCaller {
    function fallback() public payable {
        address myAddress = msg.sender;
        myAddress.call{value: msg.value}("");
    }
}
