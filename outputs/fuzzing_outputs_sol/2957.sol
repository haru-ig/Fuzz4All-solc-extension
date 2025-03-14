pragma solidity ^0.8.0;
contract MutatedCaller2 {
    function mut_fallback() public {
        msg.sender.call{value: 0}("");
    }
    fallback() external payable {
    }
}
