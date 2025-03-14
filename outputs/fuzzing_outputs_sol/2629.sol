pragma solidity ^0.8.0;
interface payableFallback {
    function getFallback() returns(address fallbackReceiver);
}
contract myContract {
    bytes32 public myDataField;
    constructor() {
        myDataField = "this is a test";
    }
    function getData() public view returns(bytes32) {
        return myDataField;
    }
}
