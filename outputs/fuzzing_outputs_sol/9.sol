pragma solidity ^0.8.0;
contract CallerCaller {
    bytes32 constant myID = keccak256("fallback()");
    fallback() external payable canCall(address(this), myID) {
    }
}
