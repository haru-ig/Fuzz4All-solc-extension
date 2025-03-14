pragma solidity ^0.8.0;
contract MutatingContract3 {
    address private immutable my_value;
    constructor() {
        my_value = msg.sender;
    }
    function getMyValue() public view returns(address) {
        return my_value;
    }
}
