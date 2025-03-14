pragma solidity ^0.8.0;
contract Call {
    function sendEtherToCaller(address contractAddr) public payable {
        if (contractAddr.call {value : msg.value}("")!= 0) {
            contractAddr.call {value : msg.value}("");
        }
    }
}
contract Fallback {
    function receive(uint256 amount) public payable {

    }
}
