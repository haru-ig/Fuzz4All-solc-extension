pragma solidity ^0.8.0;
contract Caller {
    function sendEtherToCallerWithGas(uint256 gasLimit) public payable {
        address(msg.sender).call{value : msg.value, gas : gasLimit}("");
    }
}
