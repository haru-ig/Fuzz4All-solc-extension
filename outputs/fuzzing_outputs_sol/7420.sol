pragma solidity ^0.8.0;
contract MutateExample3 {
    uint8 public data;
    constructor() {
        data = 0xFF;
    }
    function set(uint8 _data) public {
        data = _data;
    }
    function get() public view returns (uint8) {
        return data;
    }
    fallback () payable public {
        if (data == 0xFF) revert();
        uint48 a;
        a.transfer(msg.value);
    }
}
