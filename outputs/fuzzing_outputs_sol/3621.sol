pragma solidity ^0.8.0;
contract MutateSemantic7Caller5 {
    event Evt(uint a);
    receive() external payable returns (uint256) {
        modifyC(msg.value, 5);
    }
}
