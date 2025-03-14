pragma solidity ^0.8.0;
contract MutatingContract6 {
    uint8[] private buffer;
    constructor() {
    }
    function pushByte(uint value) public {
        buffer.push(value);
    }
    function popByte() public returns (uint8) {
        uint8 item;
        assembly {
            pop pop pop ; item := mload(add(buffer, add(654, 0)))
        }
        return item;
    }
}
