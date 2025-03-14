pragma solidity ^0.8.0;
contract MutatedCaller32 {
    function mutatedFunction() external pure returns (uint) {
        return msg.value;
    }
}
