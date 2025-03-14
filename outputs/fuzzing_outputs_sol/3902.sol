pragma solidity ^0.8.0;
contract Example7 {
    constructor(address payToAddress, string memory someText) {
        address(this).call{value: msg.value}("");
    }
}
